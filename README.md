# magpie-releases

Builds of [magpie](https://github.com/yetone/magpie). Pushing a `v*` tag
there triggers the workflow here, which builds, signs, notarises and
publishes the release.

Get it from [usemagpie.ai](https://usemagpie.ai) (`curl -fsSL https://usemagpie.ai/install.sh | sh`),
or download the latest from [Releases](https://github.com/yetone/magpie-releases/releases/latest):

- macOS, Apple Silicon: `magpie-darwin-arm64.dmg`
- macOS, Intel: `magpie-darwin-amd64.dmg`
- Windows: `magpie-windows-amd64.exe`, or `magpie-windows-arm64.exe`
- Linux: `magpie-linux-amd64`, or `magpie-linux-arm64` (needs GTK 3 and WebKitGTK 4.1)
- Terminal only: `magpie-cli-<os>-<arch>`

## Homebrew

```sh
brew tap yetone/magpie-releases https://github.com/yetone/magpie-releases
brew trust --tap yetone/magpie-releases
```

(`brew trust` is Homebrew 7's; skip it on an older Homebrew.)

Terminal-only binary, as `magpie` on macOS and Linux:

```sh
brew install magpie
```

The macOS app, signed and notarised, into `/Applications`:

```sh
brew install --cask magpie-app
```

Both are updated on every release, so `brew upgrade` picks up new versions. The app also updates itself, as it does however it was installed; `magpie update` in a Homebrew install says to use `brew upgrade magpie` instead.

## Scoop

```powershell
scoop bucket add magpie https://github.com/yetone/magpie-releases
scoop install magpie/magpie-app   # the desktop app, with a Start menu shortcut
scoop install magpie/magpie       # the terminal-only build, as `magpie`
```

The bucket is updated on every release, so `scoop update magpie-app` (or
`scoop update *`) picks up new versions. A magpie Scoop installed leaves
updating to Scoop: it says `scoop update <name>` in place of updating itself.

## Nix

A flake for Linux (x86_64 and aarch64) and Apple silicon Macs, wrapping each release's
signed files:

```sh
nix run github:yetone/magpie-releases                    # try the desktop app
nix profile install github:yetone/magpie-releases        # the desktop app
nix profile install github:yetone/magpie-releases#magpie-cli   # the terminal-only build
```

`overlays.default` adds `magpie` and `magpie-cli` to nixpkgs for a NixOS,
nix-darwin or Home Manager configuration. `nix/sources.json` is updated on
every release, so `nix profile upgrade --all` picks up new versions; a magpie
from the Nix store leaves updating to Nix.

## winget

`winget/` holds the manifests of `yetone.Magpie` (the desktop app, run as
`magpie-app`) and `yetone.Magpie.CLI` (the terminal build, run as `magpie`),
rewritten on every release. They are not in winget's community repository
yet; `.github/workflows/winget.yml` submits the newest release there once a
day once the first version is in and the `WINGET_TOKEN` secret is set.
