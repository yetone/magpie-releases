#!/usr/bin/env bash
# Regenerate the package manager files from the SHA256SUMS of a published
# Release: the Homebrew tap (Formula/magpie.rb, Casks/magpie-app.rb), the
# Scoop bucket (bucket/magpie.json, bucket/magpie-app.json) and the winget
# manifests (winget/, what scripts/winget.sh submits to microsoft/winget-pkgs).
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

# A Scoop manifest. $5 and $7 name the amd64 and arm64 assets, saved as
# magpie.exe; $9 is the manifest's own line (bin or shortcuts).
scoop_json() {  # version name what amd64-asset amd64-sha arm64-asset arm64-sha line
  local version="$1" name="$2" what="$3" a64="$4" s64="$5" arm="$6" sarm="$7" line="$8"
  cat <<JSON
{
    "version": "$version",
    "description": "$DESC ($what)",
    "homepage": "$HOMEPAGE",
    "license": "MIT",
    "architecture": {
        "64bit": {
            "url": "$REPO_URL/v$version/$a64#/magpie.exe",
            "hash": "$s64"
        },
        "arm64": {
            "url": "$REPO_URL/v$version/$arm#/magpie.exe",
            "hash": "$sarm"
        }
    },
    $line
    "checkver": {
        "github": "https://github.com/$REPO"
    },
    "autoupdate": {
        "architecture": {
            "64bit": {
                "url": "$REPO_URL/v\$version/$a64#/magpie.exe"
            },
            "arm64": {
                "url": "$REPO_URL/v\$version/$arm#/magpie.exe"
            }
        },
        "hash": {
            "url": "$REPO_URL/v\$version/SHA256SUMS"
        }
    }
}
JSON
}

# The three winget manifests of one package (version, installer, en-US
# locale) in winget/<id>/: what `winget validate` and `wingetcreate submit`
# take. winget wants the checksums in capitals.
winget_manifests() {  # version id name command amd64-asset amd64-sha arm64-asset arm64-sha
  local version="$1" id="$2" name="$3" cmd="$4" a64="$5" s64="$6" arm="$7" sarm="$8"
  local dir="$OUT/winget/$id" schema="1.10.0"
  mkdir -p "$dir"
  rm -f "$dir"/*.yaml
  cat > "$dir/$id.yaml" <<YAML
# yaml-language-server: \$schema=https://aka.ms/winget-manifest.version.$schema.schema.json
PackageIdentifier: $id
PackageVersion: $version
DefaultLocale: en-US
ManifestType: version
ManifestVersion: $schema
YAML
  cat > "$dir/$id.installer.yaml" <<YAML
# yaml-language-server: \$schema=https://aka.ms/winget-manifest.installer.$schema.schema.json
PackageIdentifier: $id
PackageVersion: $version
InstallerType: portable
Commands:
- $cmd
Installers:
- Architecture: x64
  InstallerUrl: $REPO_URL/v$version/$a64
  InstallerSha256: $(tr '[:lower:]' '[:upper:]' <<<"$s64")
- Architecture: arm64
  InstallerUrl: $REPO_URL/v$version/$arm
  InstallerSha256: $(tr '[:lower:]' '[:upper:]' <<<"$sarm")
ManifestType: installer
ManifestVersion: $schema
YAML
  cat > "$dir/$id.locale.en-US.yaml" <<YAML
# yaml-language-server: \$schema=https://aka.ms/winget-manifest.defaultLocale.$schema.schema.json
PackageIdentifier: $id
PackageVersion: $version
PackageLocale: en-US
Publisher: yetone
PublisherUrl: https://github.com/yetone
PublisherSupportUrl: https://github.com/yetone/magpie/issues
PackageName: $name
PackageUrl: $HOMEPAGE
License: MIT
LicenseUrl: https://github.com/yetone/magpie/blob/main/LICENSE
ShortDescription: $DESC
Moniker: $cmd
Tags:
- ai
- coding-agent
- llm
ReleaseNotesUrl: https://github.com/$REPO/releases/tag/v$version
ManifestType: defaultLocale
ManifestVersion: $schema
YAML
  echo "wrote $dir"
}

render() {
  local version="$1"
  local sums
  sums="$(curl -fsSL --retry 3 --retry-delay 5 --retry-all-errors "$(release_url "$version")/SHA256SUMS")" ||
    die "no SHA256SUMS in v$version of $REPO"

  # Every checksum is resolved before anything is written.
  local cli_darwin_arm64 cli_darwin_amd64 cli_linux_arm64 cli_linux_amd64
  local app_arm64 app_amd64
  local cli_win_amd64 cli_win_arm64 app_win_amd64 app_win_arm64
  cli_darwin_arm64="$(sha "$sums" magpie-cli-darwin-arm64)"
  cli_darwin_amd64="$(sha "$sums" magpie-cli-darwin-amd64)"
  cli_linux_arm64="$(sha "$sums" magpie-cli-linux-arm64)"
  cli_linux_amd64="$(sha "$sums" magpie-cli-linux-amd64)"
  app_arm64="$(sha "$sums" magpie-darwin-arm64.zip)"
  app_amd64="$(sha "$sums" magpie-darwin-amd64.zip)"
  cli_win_amd64="$(sha "$sums" magpie-cli-windows-amd64.exe)"
  cli_win_arm64="$(sha "$sums" magpie-cli-windows-arm64.exe)"
  app_win_amd64="$(sha "$sums" magpie-windows-amd64.exe)"
  app_win_arm64="$(sha "$sums" magpie-windows-arm64.exe)"

  mkdir -p "$OUT/Formula" "$OUT/Casks" "$OUT/bucket"

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

  # Scoop: the terminal build as `magpie`, and the app with a Start menu
  # shortcut. Each release rewrites them here; checkver and autoupdate
  # let `scoop` (and Scoop's Excavator) bring one up to date by itself
  # too, from the same SHA256SUMS. The app updates itself no more under
  # Scoop: magpie leaves an app in Scoop's apps folder to `scoop update`
  # (internal/update/packaged.go in yetone/magpie).
  scoop_json "$version" magpie "the terminal build" \
    magpie-cli-windows-amd64.exe "$cli_win_amd64" magpie-cli-windows-arm64.exe "$cli_win_arm64" \
    '"bin": "magpie.exe",' > "$OUT/bucket/magpie.json"
  scoop_json "$version" magpie-app "the desktop app" \
    magpie-windows-amd64.exe "$app_win_amd64" magpie-windows-arm64.exe "$app_win_arm64" \
    '"shortcuts": [["magpie.exe", "magpie"]],' > "$OUT/bucket/magpie-app.json"
  for file in "$OUT/bucket/magpie.json" "$OUT/bucket/magpie-app.json"; do
    if command -v jq > /dev/null; then
      jq -e . "$file" > /dev/null || die "$file is not valid JSON"
    fi
    echo "wrote $file"
  done

  # winget: portable packages, the app as yetone.Magpie (run as magpie-app,
  # so it doesn't take `magpie` from the terminal build) and the terminal
  # build as yetone.Magpie.CLI (run as magpie).
  winget_manifests "$version" yetone.Magpie "magpie" magpie-app \
    magpie-windows-amd64.exe "$app_win_amd64" magpie-windows-arm64.exe "$app_win_arm64"
  winget_manifests "$version" yetone.Magpie.CLI "magpie CLI" magpie \
    magpie-cli-windows-amd64.exe "$cli_win_amd64" magpie-cli-windows-arm64.exe "$cli_win_arm64"

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

  local bucket="$dir/bucket"
  grep -q "\"version\": \"$version\"" "$bucket/magpie.json" || die "scoop magpie is not at v$version"
  assert_next "$bucket/magpie.json" 'magpie-cli-windows-amd64.exe#' "$(sha "$sums" magpie-cli-windows-amd64.exe)"
  assert_next "$bucket/magpie.json" 'magpie-cli-windows-arm64.exe#' "$(sha "$sums" magpie-cli-windows-arm64.exe)"
  assert_next "$bucket/magpie-app.json" "v$version/magpie-windows-amd64.exe#" "$(sha "$sums" magpie-windows-amd64.exe)"
  assert_next "$bucket/magpie-app.json" "v$version/magpie-windows-arm64.exe#" "$(sha "$sums" magpie-windows-arm64.exe)"
  local inst="$dir/winget/yetone.Magpie/yetone.Magpie.installer.yaml"
  assert_next "$inst" 'magpie-windows-amd64.exe' "$(sha "$sums" magpie-windows-amd64.exe | tr '[:lower:]' '[:upper:]')"
  assert_next "$inst" 'magpie-windows-arm64.exe' "$(sha "$sums" magpie-windows-arm64.exe | tr '[:lower:]' '[:upper:]')"

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
