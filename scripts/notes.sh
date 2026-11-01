#!/usr/bin/env bash
# The notes of one release: DeepSeek's changelog of its commits in English,
# then the Chinese below a <!-- lang:zh --> marker, which usemagpie.ai serves
# to apps set to Chinese (yetone/magpie site/worker.js).
#
#   scripts/notes.sh <tag> <end> <out>
#
# Run inside a checkout of yetone/magpie with its tags. The commits are those
# after the tag before <tag> up to <end> (HEAD while a release builds, the
# tag itself when notes are written again later). It writes
#   <out>/changelog.md     the release's whole body
#   <out>/changelog-en.md  the English alone (for Discord)
#   <out>/llm              "en" and "zh" on their lines when DeepSeek wrote
#                          that part (a part it didn't write is the commit
#                          list, or no Chinese), "none" when there are no
#                          commits
# and exits 0 either way: a release is never held back for its notes.
# Release notes without both are written again each hour by notes.yml.
#
# DEEPSEEK_API_KEY is the key; DEEPSEEK_URL overrides the endpoint (tests).
# GH_TOKEN is for credits-cli.mjs's read-only lookups.
set -u

CURRENT_TAG="$1"
END="$2"
OUT="$3"
URL="${DEEPSEEK_URL:-https://api.deepseek.com/chat/completions}"
DEEPSEEK_API_KEY="${DEEPSEEK_API_KEY:-}"
mkdir -p "$OUT"
: > "$OUT/llm"

PREV_TAG=$(git tag --sort=-v:refname | grep -A1 "^${CURRENT_TAG}$" | tail -1)
if [ -z "$PREV_TAG" ] || [ "$PREV_TAG" = "$CURRENT_TAG" ]; then
  PREV_TAG=$(git rev-list --max-parents=0 "$END")
fi
echo "Commits since $PREV_TAG"
COMMITS=$(git log "$PREV_TAG..$END" --pretty=format:"%s" --no-merges)
echo "$COMMITS"
# a tag on the commit of the one before has nothing to write about
[ -n "$COMMITS" ] || echo none >> "$OUT/llm"

CHANGELOG=""
if [ -n "$DEEPSEEK_API_KEY" ] && [ -n "$COMMITS" ]; then
  PROMPT="Based on the following git commit messages, generate a concise and user-friendly changelog in markdown format. Group changes by category (e.g., Features, Bug Fixes, Improvements). Only include meaningful changes, skip trivial commits. Use clear, non-technical language where possible. Output ONLY the changelog content without any preamble.

Commit messages:
$COMMITS"
  RESPONSE=$(curl -s --max-time 300 "$URL" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer $DEEPSEEK_API_KEY" \
    -d "$(jq -n --arg prompt "$PROMPT" '{"model": "deepseek-v4-pro", "messages": [{"role": "user", "content": $prompt}]}')") || true
  CHANGELOG=$(echo "$RESPONSE" | jq -r '.choices[0].message.content // empty' 2>/dev/null) || CHANGELOG=""
  # a refusal (a spent balance, a retired model) is said, not
  # silently turned into the commit list (10-13 to 10-14: no
  # notes and no Chinese for four releases, yetone/magpie#2122)
  if [ -n "$CHANGELOG" ]; then
    echo en >> "$OUT/llm"
  else
    echo "::warning::DeepSeek wrote no changelog: $(echo "$RESPONSE" | jq -c '.error // .' 2>/dev/null | head -c 500)"
  fi
fi
if [ -z "$CHANGELOG" ]; then
  CHANGELOG=$(printf '### Changes\n\n'; echo "${COMMITS:-Various improvements and bug fixes}" | sed 's/^/- /')
fi

# An urgent release goes to the Stable update channel at once
# (usemagpie.ai's /api/latest?channel=stable, yetone/magpie
# site/worker.js): a commit since the version before with an
# `Urgent: <why>` trailer puts the line the feed looks for at the
# top of the notes, untranslated, in every language's part.
URGENT=$(git log "$PREV_TAG..$END" --no-merges --format='%(trailers:key=Urgent,valueonly,separator=%x0A)' | sed 's/^[[:space:]]*//;s/[[:space:]]*$//' | { grep -v '^$' || true; } | awk '!seen[$0]++' | paste -sd ';' - | sed 's/;/; /g')
# The people this release's commits credit, named last in each
# language's part: reporters in a subject's brackets, the authors
# of the issues it names, and commit authors other than the owner
# (yetone/magpie site/credits-cli.mjs). Never guessed: a ref
# from before the script, or a failure, leaves the line out.
THANKS_EN=""; THANKS_ZH=""
if [ -f site/credits-cli.mjs ]; then
  if THANKS=$(node site/credits-cli.mjs thanks "$PREV_TAG..$END"); then
    THANKS_EN=$(printf '%s\n' "$THANKS" | sed -n 1p)
    THANKS_ZH=$(printf '%s\n' "$THANKS" | sed -n 2p)
    echo "Thanks: ${THANKS_EN:-nobody credited}"
  else
    echo "::warning::credits-cli.mjs failed; the notes go out without thanks"
  fi
fi

URGENT_LINE=""
if [ -n "$URGENT" ]; then
  URGENT_LINE="**Urgent release:** $URGENT"
  echo "Urgent: $URGENT"
fi

{
  if [ -n "$URGENT_LINE" ]; then echo "$URGENT_LINE"; echo; fi
  echo "$CHANGELOG"
  echo
  echo "### Install"
  echo
  echo "Download from [usemagpie.ai](https://usemagpie.ai), or \`curl -fsSL https://usemagpie.ai/install.sh | sh\`. An installed magpie updates itself."
  echo
  echo "- **macOS (Apple Silicon):** \`magpie-darwin-arm64.dmg\`"
  echo "- **macOS (Intel):** \`magpie-darwin-amd64.dmg\`"
  echo "- **Windows:** \`magpie-windows-amd64.exe\` (ARM: \`magpie-windows-arm64.exe\`)"
  echo "- **Linux:** \`magpie-linux-amd64\` / \`magpie-linux-arm64\` (needs GTK 3 and WebKitGTK 4.1)"
  echo "- **Terminal only:** \`magpie-cli-<os>-<arch>\`"
  if [ -n "$THANKS_EN" ]; then echo; echo "$THANKS_EN"; fi
} > "$OUT/changelog.md"
# The English alone goes to Discord; the app asks usemagpie.ai for
# the notes in its language, served from below the marker.
cp "$OUT/changelog.md" "$OUT/changelog-en.md"

ZH=""
if [ -n "$DEEPSEEK_API_KEY" ]; then
  ZPROMPT="Translate the following release notes into Simplified Chinese. Keep the markdown structure, headings, links, code spans and product names (magpie, Claude Code, Codex, ...) as they are. Output ONLY the translation without any preamble.

$CHANGELOG"
  ZRESPONSE=$(curl -s --max-time 300 "$URL" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer $DEEPSEEK_API_KEY" \
    -d "$(jq -n --arg prompt "$ZPROMPT" '{"model": "deepseek-v4-pro", "messages": [{"role": "user", "content": $prompt}]}')") || true
  ZH=$(echo "$ZRESPONSE" | jq -r '.choices[0].message.content // empty' 2>/dev/null) || ZH=""
  [ -n "$ZH" ] || echo "::warning::DeepSeek wrote no Chinese notes: $(echo "$ZRESPONSE" | jq -c '.error // .' 2>/dev/null | head -c 500)"
fi
if [ -n "$ZH" ]; then
  echo zh >> "$OUT/llm"
  {
    echo
    echo "<!-- lang:zh -->"
    echo
    if [ -n "$URGENT_LINE" ]; then echo "$URGENT_LINE"; echo; fi
    echo "$ZH"
    echo
    echo "### 安装"
    echo
    echo "从 [usemagpie.ai](https://usemagpie.ai) 下载，或运行 \`curl -fsSL https://usemagpie.ai/install.sh | sh\`。已安装的 magpie 会自动更新。"
    if [ -n "$THANKS_ZH" ]; then echo; echo "$THANKS_ZH"; fi
  } >> "$OUT/changelog.md"
else
  echo "No Chinese notes — the English alone is published."
fi
cat "$OUT/changelog.md"
exit 0
