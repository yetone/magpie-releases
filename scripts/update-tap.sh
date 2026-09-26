#!/usr/bin/env bash
# Regenerate the Homebrew tap files — Formula/magpie.rb and Casks/magpie-app.rb —
# from the SHA256SUMS of a published Release.
#
#   scripts/update-tap.sh 0.1.57
#   TAP_OUT_DIR=/tmp/tap scripts/update-tap.sh 0.1.57
#   scripts/update-tap.sh --self-check
#
# TAP_RELEASE_REPO overrides the Release repo (default yetone/magpie-releases);
# the self-check uses it to pick the latest Release.
set -euo pipefail

REPO="${TAP_RELEASE_REPO:-yetone/magpie-releases}"
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUT="${TAP_OUT_DIR:-$ROOT}"
HOMEPAGE="https://usemagpie.ai/"
DESC="Pick the model each AI coding agent on your machine uses"

die() { echo "update-tap: $*" >&2; exit 1; }

REPO_URL="https://github.com/$REPO/releases/download"

release_url() { echo "$REPO_URL/v$1"; }

# The checksum of one asset in a SHA256SUMS file, or a loud failure if the
# asset is not in it — a release that is missing an asset must not produce a
# formula with a blank sha256.
sha() {  # $1 = SHA256SUMS contents, $2 = asset name
  local s
  s="$(awk -v f="$2" '$2 == f { print $1 }' <<<"$1")"
  [ -n "$s" ] || die "$2 has no checksum in this release's SHA256SUMS"
  echo "$s"
}

latest_version() {
  local json
  json="$(curl -fsSL "https://api.github.com/repos/$REPO/releases/latest")"
  json="${json#*\"tag_name\": \"v}"
  echo "${json%%\"*}"
}

render() {
  local version="$1"
  local sums
  sums="$(curl -fsSL --retry 3 --retry-delay 5 --retry-all-errors "$(release_url "$version")/SHA256SUMS")" ||
    die "no SHA256SUMS in v$version of $REPO"

  # Every checksum is resolved before anything is written.
  local cli_darwin_arm64 cli_darwin_amd64 cli_linux_arm64 cli_linux_amd64
  local app_arm64 app_amd64
  cli_darwin_arm64="$(sha "$sums" magpie-cli-darwin-arm64)"
  cli_darwin_amd64="$(sha "$sums" magpie-cli-darwin-amd64)"
  cli_linux_arm64="$(sha "$sums" magpie-cli-linux-arm64)"
  cli_linux_amd64="$(sha "$sums" magpie-cli-linux-amd64)"
  app_arm64="$(sha "$sums" magpie-darwin-arm64.zip)"
  app_amd64="$(sha "$sums" magpie-darwin-amd64.zip)"

  mkdir -p "$OUT/Formula" "$OUT/Casks"

  cat > "$OUT/Formula/magpie.rb" <<RB
class Magpie < Formula
  desc "$DESC"
  homepage "$HOMEPAGE"
  license "MIT"

  on_macos do
    on_arm do
      url "$REPO_URL/v$version/magpie-cli-darwin-arm64"
      sha256 "$cli_darwin_arm64"
    end
    on_intel do
      url "$REPO_URL/v$version/magpie-cli-darwin-amd64"
      sha256 "$cli_darwin_amd64"
    end
  end
  on_linux do
    on_arm do
      url "$REPO_URL/v$version/magpie-cli-linux-arm64"
      sha256 "$cli_linux_arm64"
    end
    on_intel do
      url "$REPO_URL/v$version/magpie-cli-linux-amd64"
      sha256 "$cli_linux_amd64"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
RB

  cat > "$OUT/Casks/magpie-app.rb" <<RB
cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "$version"
  sha256 arm:   "$app_arm64",
         intel: "$app_amd64"

  url "$REPO_URL/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "$DESC"
  homepage "$HOMEPAGE"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
RB

  for file in "$OUT/Formula/magpie.rb" "$OUT/Casks/magpie-app.rb"; do
    if command -v ruby > /dev/null; then
      ruby -c "$file" > /dev/null || die "$file is not valid Ruby"
    fi
    echo "wrote $file"
  done
}

# A checksum has to sit with the asset it belongs to, not merely appear
# somewhere in the file, or a swapped arm64/amd64 pair would pass.
assert_next() {  # $1 = file, $2 = anchor, $3 = checksum expected on the next line
  grep -A1 "$2" "$1" | grep -q "$3" || die "$2 in $1 is not paired with its checksum"
}
assert_same() {  # $1 = file, $2 = anchor, $3 = checksum expected on the same line
  grep -q "$2.*$3" "$1" || die "$2 in $1 is not paired with its checksum"
}

self_check() {
  local version dir sums
  version="$(latest_version)"
  [ -n "$version" ] || die "cannot determine the latest Release of $REPO"
  echo "self-check against v$version of $REPO"

  dir="$(mktemp -d)"
  trap 'rm -rf "${dir:-}"' EXIT
  OUT="$dir" render "$version"

  local formula="$dir/Formula/magpie.rb" cask="$dir/Casks/magpie-app.rb"
  grep -q "/v$version/" "$formula" || die "formula is not at v$version"
  grep -q "version \"$version\"" "$cask" || die "cask is not at v$version"

  sums="$(curl -fsSL "$(release_url "$version")/SHA256SUMS")"
  assert_next "$formula" 'magpie-cli-darwin-arm64"' "$(sha "$sums" magpie-cli-darwin-arm64)"
  assert_next "$formula" 'magpie-cli-darwin-amd64"' "$(sha "$sums" magpie-cli-darwin-amd64)"
  assert_next "$formula" 'magpie-cli-linux-arm64"'  "$(sha "$sums" magpie-cli-linux-arm64)"
  assert_next "$formula" 'magpie-cli-linux-amd64"'  "$(sha "$sums" magpie-cli-linux-amd64)"
  assert_same "$cask" 'arm:'   "$(sha "$sums" magpie-darwin-arm64.zip)"
  assert_same "$cask" 'intel:' "$(sha "$sums" magpie-darwin-amd64.zip)"

  # An asset missing from SHA256SUMS must fail the render, in a subshell so the
  # exit only ends the probe.
  if (sha "" magpie-cli-darwin-arm64) 2> /dev/null; then
    die "a missing asset did not fail the render"
  fi

  echo "self-check passed"
}

case "${1:-}" in
  --self-check) self_check ;;
  "" | -h | --help) die "usage: update-tap.sh <version>|--self-check" ;;
  *) render "${1#v}" ;;
esac
