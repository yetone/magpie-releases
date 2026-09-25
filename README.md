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

This repo is also a Homebrew tap. Tap it with the full URL — the repo is not
named `homebrew-*`, so the short form does not work:

```sh
brew tap yetone/magpie-releases https://github.com/yetone/magpie-releases
```

The **formula** installs the terminal-only binary as `magpie`, on macOS and
Linux:

```sh
brew install magpie
```

The **cask** installs the macOS app (signed and notarised) into
`/Applications`:

```sh
brew install --cask magpie-app
```

Both are updated by the release workflow on every release, so `brew upgrade`
picks up new versions like any other package.
