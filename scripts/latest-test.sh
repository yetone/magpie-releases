#!/usr/bin/env bash
# Checks scripts/latest.sh against a fake gh on PATH: nothing reaches the
# network.
#
#   scripts/latest-test.sh
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
LATEST="$ROOT/scripts/latest.sh"
T=$(mktemp -d)
trap 'rm -rf "$T"' EXIT
fail() { echo "FAIL: $*" >&2; exit 1; }

# the fake: lists $T/tags (newest first, as gh does), answers releases/latest
# from $T/now and records each edit in $T/edits
cat > "$T/gh" <<'EOF'
#!/usr/bin/env bash
d="$(dirname "$0")"
case "$1 $2" in
  "release list") cat "$d/tags" ;;
  "api repos/"*) [ -s "$d/now" ] && cat "$d/now" || { echo "HTTP 404" >&2; exit 1; } ;;
  "release edit") shift 2; echo "$*" >> "$d/edits"; printf '%s\n' "$1" > "$d/now" ;;
  *) echo "fake gh: $*" >&2; exit 1 ;;
esac
EOF
chmod +x "$T/gh"
export PATH="$T:$PATH"
R=yetone/magpie-releases

tags() { printf '%s\n' "$@" > "$T/tags"; }

# 11-09: 3360 rerun after 3361 and 3362 went out
tags v0.1.3362 v0.1.3361 v0.1.3359 v0.1.3358
[ "$(bash "$LATEST" is-newest $R v0.1.3360)" = false ] || fail "3360 under 3362 is not newest"
[ "$(bash "$LATEST" is-newest $R v0.1.3363)" = true ] || fail "3363 over 3362 is newest"
[ "$(bash "$LATEST" newest $R)" = v0.1.3362 ] || fail "newest is 3362"

# a rerun over its own published release: equal counts as newest
[ "$(bash "$LATEST" is-newest $R v0.1.3362)" = true ] || fail "3362 rerun is newest"

# numbers, not text: 0.1.999 < 0.1.1000, 0.1.9 < 0.1.10
tags v0.1.999 v0.1.998
[ "$(bash "$LATEST" is-newest $R v0.1.1000)" = true ] || fail "1000 over 999"
tags v0.1.1000 v0.1.10
[ "$(bash "$LATEST" is-newest $R v0.1.999)" = false ] || fail "999 under 1000"
[ "$(bash "$LATEST" is-newest $R v0.1.9)" = false ] || fail "9 under 10"

# a stray tag name is not a version
tags vnext v0.1.5 nightly
[ "$(bash "$LATEST" newest $R)" = v0.1.5 ] || fail "only vN.N.N tags count"

# no release yet
: > "$T/tags"
[ "$(bash "$LATEST" is-newest $R v0.1.1)" = true ] || fail "the first release is newest"
bash "$LATEST" mark $R | grep -q "no published release" || fail "mark with none"
[ ! -e "$T/edits" ] || fail "mark with none edited"

# mark: the mark moves from 3360 back to 3362, once
tags v0.1.3360 v0.1.3362 v0.1.3361
echo v0.1.3360 > "$T/now"
bash "$LATEST" mark $R
[ "$(cat "$T/edits")" = "v0.1.3362 -R $R --latest" ] || fail "mark moved: $(cat "$T/edits")"
bash "$LATEST" mark $R | grep -q "v0.1.3362 is Latest" || fail "second mark"
[ "$(wc -l < "$T/edits")" -eq 1 ] || fail "mark edited a Latest release again"

# mark with no Latest at all (404)
rm -f "$T/now" "$T/edits"
bash "$LATEST" mark $R
[ "$(cat "$T/edits")" = "v0.1.3362 -R $R --latest" ] || fail "mark from none"

# gh failing to list fails the script: never a guess
cat > "$T/tags" <<'EOF'
EOF
printf '#!/usr/bin/env bash\necho "HTTP 502" >&2; exit 1\n' > "$T/gh2"
mv "$T/gh" "$T/gh.ok"; mv "$T/gh2" "$T/gh"; chmod +x "$T/gh"
if bash "$LATEST" is-newest $R v0.1.1 >/dev/null 2>&1; then fail "a failed list decided"; fi

echo "latest-test: ok"
