#!/usr/bin/env bash
# Check that the Nix flake is current: nix/sources.json names the latest
# Release (one published in the last NIX_GRACE_MINUTES may still be on its
# way, through the release workflow's tap step), and each asset's hash is
# the one in that version's SHA256SUMS.
#
#   scripts/check-nix.sh
set -euo pipefail

REPO="${TAP_RELEASE_REPO:-yetone/magpie-releases}"
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="$ROOT/nix/sources.json"
GRACE="${NIX_GRACE_MINUTES:-180}"

die() { echo "check-nix: $*" >&2; exit 1; }

api() {
  local auth=()
  [ -n "${GITHUB_TOKEN:-}" ] && auth=(-H "Authorization: Bearer $GITHUB_TOKEN")
  curl -fsSL ${auth[@]+"${auth[@]}"} "https://api.github.com/repos/$REPO/$1"
}

have="$(jq -er .version "$SRC")" || die "nix/sources.json has no version"

latest="$(api releases/latest)"
tag="$(jq -er .tag_name <<<"$latest")" || die "cannot read the latest Release"
want="${tag#v}"
if [ "$have" != "$want" ]; then
  published="$(jq -er .published_at <<<"$latest")"
  age=$(( ($(date -u +%s) - $(date -u -d "$published" +%s 2>/dev/null || date -u -j -f '%Y-%m-%dT%H:%M:%SZ' "$published" +%s)) / 60 ))
  if [ "$age" -ge "$GRACE" ]; then
    die "nix/sources.json is at $have, the latest Release $want was published $age minutes ago"
  fi
  echo "nix/sources.json is at $have; $want was published $age minutes ago, inside the $GRACE-minute grace"
fi

sums="$(curl -fsSL "https://github.com/$REPO/releases/download/v$have/SHA256SUMS")" ||
  die "v$have has no SHA256SUMS"
n=0
while IFS=$'\t' read -r asset hash; do
  real="$(awk -v f="$asset" '$2 == f { print $1 }' <<<"$sums")"
  [ -n "$real" ] || die "$asset has no checksum in v$have's SHA256SUMS"
  [ "$real" = "$hash" ] || die "$asset: nix/sources.json has $hash, v$have's SHA256SUMS has $real"
  n=$((n + 1))
done < <(jq -r '.assets | to_entries[] | "\(.key)\t\(.value)"' "$SRC")
[ "$n" -eq 8 ] || die "nix/sources.json names $n assets, not 8"
echo "nix/sources.json is at v$have with $n assets matching SHA256SUMS"
