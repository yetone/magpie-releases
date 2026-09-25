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
HOMEPAGE="https://usemagpie.ai"
DESC="Pick the model each AI coding agent on your machine uses"

die() { echo "update-tap: $*" >&2; exit 1; }

release_url() { echo "https://github.com/$REPO/releases/download/v$1"; }

latest_version() {
  local json
  json="$(curl -fsSL "https://api.github.com/repos/$REPO/releases/latest")"
  json="${json#*\"tag_name\": \"v}"
  echo "${json%%\"*}"
}

render() {
  local version="$1"
  local base sums
  base="$(release_url "$version")"
  sums="$(curl -fsSL --retry 3 --retry-delay 5 --retry-all-errors "$base/SHA256SUMS")" ||
    die "no SHA256SUMS in v$version of $REPO"

  sha() {
    local s
    s="$(awk -v f="$1" '$2 == f { print $1 }' <<<"$sums")"
    [ -n "$s" ] || die "$1 is missing from v$version's SHA256SUMS"
    echo "$s"
  }

  # Every checksum is resolved before anything is written, so a missing asset
  # fails loudly instead of leaving a formula with a blank sha256 behind.
  local cli_darwin_arm64 cli_darwin_amd64 cli_linux_arm64 cli_linux_amd64
  local app_arm64 app_amd64
  cli_darwin_arm64="$(sha magpie-cli-darwin-arm64)"
  cli_darwin_amd64="$(sha magpie-cli-darwin-amd64)"
  cli_linux_arm64="$(sha magpie-cli-linux-arm64)"
  cli_linux_amd64="$(sha magpie-cli-linux-amd64)"
  app_arm64="$(sha magpie-darwin-arm64.zip)"
  app_amd64="$(sha magpie-darwin-amd64.zip)"

  mkdir -p "$OUT/Formula" "$OUT/Casks"

  cat > "$OUT/Formula/magpie.rb" <<RB
class Magpie < Formula
  desc "$DESC"
  homepage "$HOMEPAGE"
  version "$version"
  license "MIT"

  on_macos do
    on_arm do
      url "$base/magpie-cli-darwin-arm64"
      sha256 "$cli_darwin_arm64"
    end
    on_intel do
      url "$base/magpie-cli-darwin-amd64"
      sha256 "$cli_darwin_amd64"
    end
  end
  on_linux do
    on_arm do
      url "$base/magpie-cli-linux-arm64"
      sha256 "$cli_linux_arm64"
    end
    on_intel do
      url "$base/magpie-cli-linux-amd64"
      sha256 "$cli_linux_amd64"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie $version", shell_output("#{bin}/magpie --version")
  end
end
RB

  cat > "$OUT/Casks/magpie-app.rb" <<RB
cask "magpie-app" do
  version "$version"
  sha256 arm:   "$app_arm64",
         intel: "$app_amd64"

  arch arm: "arm64", intel: "amd64"

  url "$base/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "$DESC"
  homepage "$HOMEPAGE"

  app "magpie.app"

  zap trash: [
    "~/.config/magpie",
  ]
end
RB

  for file in "$OUT/Formula/magpie.rb" "$OUT/Casks/magpie-app.rb"; do
    if command -v ruby > /dev/null; then
      ruby -c "$file" > /dev/null || die "$file is not valid Ruby"
    fi
    echo "wrote $file"
  done
}

self_check() {
  local version dir sums
  version="$(latest_version)"
  [ -n "$version" ] || die "cannot determine the latest Release of $REPO"
  echo "self-check against v$version of $REPO"

  dir="$(mktemp -d)"
  trap 'rm -rf "${dir:-}"' EXIT
  OUT="$dir" render "$version"

  sums="$(curl -fsSL "$(release_url "$version")/SHA256SUMS")"
  while read -r sum file; do
    grep -q "$sum" "$dir/Formula/magpie.rb" "$dir/Casks/magpie-app.rb" ||
      die "$file's checksum did not reach the tap files"
  done < <(grep -E 'magpie-cli-(darwin|linux)-(arm64|amd64)$|magpie-darwin-(arm64|amd64)\.zip' <<<"$sums")
  grep -q "version \"$version\"" "$dir/Formula/magpie.rb" || die "formula is not at v$version"
  grep -q "version \"$version\"" "$dir/Casks/magpie-app.rb" || die "cask is not at v$version"

  echo "self-check passed"
}

case "${1:-}" in
  --self-check) self_check ;;
  "" | -h | --help) die "usage: update-tap.sh <version>|--self-check" ;;
  *) render "${1#v}" ;;
esac
