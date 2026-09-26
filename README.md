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
