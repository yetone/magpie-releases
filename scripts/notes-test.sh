#!/usr/bin/env bash
# Checks scripts/notes.sh against a fake DeepSeek on 127.0.0.1, in a
# throwaway git repo: nothing reaches the network.
#
#   scripts/notes-test.sh
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
NOTES="$ROOT/scripts/notes.sh"
T=$(mktemp -d)
trap 'kill "$SRV" 2>/dev/null && wait "$SRV" 2>/dev/null; rm -rf "$T"' EXIT
fail() { echo "FAIL: $*" >&2; exit 1; }

# the fake: answers by $T/mode (ok, balance), writes each prompt to $T/asked
cat > "$T/fake.py" <<'EOF'
import http.server, json, os, sys
d = sys.argv[1]
class H(http.server.BaseHTTPRequestHandler):
    def log_message(self, *a): pass
    def do_POST(self):
        body = json.loads(self.rfile.read(int(self.headers["Content-Length"])))
        prompt = body["messages"][0]["content"]
        with open(os.path.join(d, "asked"), "a") as f: f.write(prompt + "\n\x1e\n")
        mode = open(os.path.join(d, "mode")).read().strip()
        if mode == "balance":
            code, out = 402, {"error": {"message": "Insufficient Balance", "type": "insufficient_balance_error"}}
        elif prompt.startswith("Translate"):
            code, out = 200, {"choices": [{"message": {"content": "## 错误修复\n- 中文说明"}}]}
        else:
            code, out = 200, {"choices": [{"message": {"content": "## Bug Fixes\n- A user-facing note"}}]}
        b = json.dumps(out).encode()
        self.send_response(code); self.send_header("Content-Type", "application/json")
        self.send_header("Content-Length", str(len(b))); self.end_headers(); self.wfile.write(b)
s = http.server.HTTPServer(("127.0.0.1", 0), H)
open(os.path.join(d, "port"), "w").write(str(s.server_port))
s.serve_forever()
EOF
python3 -I "$T/fake.py" "$T" & SRV=$!
for _ in $(seq 50); do [ -s "$T/port" ] && break; sleep 0.1; done
[ -s "$T/port" ] || fail "the fake never listened"
export DEEPSEEK_URL="http://127.0.0.1:$(cat "$T/port")/chat/completions"
export DEEPSEEK_API_KEY=test-key

# a repo: v0.1.1, two commits (one urgent), v0.1.2, v0.1.3 on the same commit
R="$T/repo"; git init -q "$R"; cd "$R"
git config user.name t; git config user.email t@example.com
git commit -q --allow-empty -m "first"; git tag v0.1.1
git commit -q --allow-empty -m "gateway: a fix users see"
git commit -q --allow-empty -m "gui: another fix" -m "Urgent: requests failed"
git tag v0.1.2; git tag v0.1.3
git commit -q --allow-empty -m "after the tag"

run() { rm -rf "$T/out"; "$NOTES" "$@" "$T/out" > "$T/log" 2>&1 || fail "notes.sh exited $? ($*)"; }

# 1. DeepSeek writes both parts
echo ok > "$T/mode"; : > "$T/asked"
run v0.1.2 v0.1.2
grep -qx en "$T/out/llm" && grep -qx zh "$T/out/llm" || fail "llm: $(cat "$T/out/llm")"
grep -qF '<!-- lang:zh -->' "$T/out/changelog.md" || fail "no Chinese part"
grep -qF -- '- 中文说明' "$T/out/changelog.md" || fail "no Chinese text"
grep -qF -- '- A user-facing note' "$T/out/changelog-en.md" || fail "no English text"
! grep -qF 'lang:zh' "$T/out/changelog-en.md" || fail "the English part has the Chinese"
[ "$(grep -c '^\*\*Urgent release:\*\* requests failed$' "$T/out/changelog.md")" = 2 ] || fail "urgent line not in both parts"
grep -qF 'gateway: a fix users see' "$T/asked" || fail "the commits weren't asked about"
! grep -qF 'after the tag' "$T/asked" || fail "a commit after <end> was asked about"
! grep -qF 'first' "$T/asked" || fail "a commit before the tag before was asked about"

# 2. a spent balance: the commit list, no Chinese, said, exit 0
echo balance > "$T/mode"
run v0.1.2 v0.1.2
[ ! -s "$T/out/llm" ] || fail "llm after a refusal: $(cat "$T/out/llm")"
! grep -qF 'lang:zh' "$T/out/changelog.md" || fail "a Chinese part after a refusal"
grep -qF -- '- gateway: a fix users see' "$T/out/changelog.md" || fail "no commit list"
grep -q 'warning::DeepSeek wrote no changelog: .*insufficient_balance' "$T/log" || fail "the refusal wasn't said"
grep -q 'warning::DeepSeek wrote no Chinese notes' "$T/log" || fail "the Chinese refusal wasn't said"

# 3. DeepSeek can't be reached: the same, exit 0
DEEPSEEK_URL=http://127.0.0.1:9/ run v0.1.2 v0.1.2
[ ! -s "$T/out/llm" ] || fail "llm with no answer"
grep -qF '### Install' "$T/out/changelog.md" || fail "no body with no answer"

# 4. a tag on the commit of the one before: none, and nothing asked
echo ok > "$T/mode"; : > "$T/asked"
run v0.1.3 v0.1.3
grep -qx none "$T/out/llm" || fail "llm for an empty range: $(cat "$T/out/llm")"
! grep -q 'Commit messages' "$T/asked" || fail "a changelog was asked for no commits"

# 5. while building: HEAD is the end
run v0.1.2 HEAD
grep -qx en "$T/out/llm" || fail "HEAD as the end"

echo "notes.sh: all checks pass"
