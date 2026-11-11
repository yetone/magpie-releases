cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3667"
  sha256 arm:   "065a8445a0ac0ce32189b65c779340aff7b2d0b0955520053fbf655f99517733",
         intel: "b645ce55ed9c44ae22d17c4c7aad58fd8654119a9b18ce908bde0286e04637a4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
