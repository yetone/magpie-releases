cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1013"
  sha256 arm:   "e923c63b76d6e2a7ad85ead3ad1c26fd7d3eb67188be9c9bf914def4819ebd27",
         intel: "6c20e76d8c3e0e3ca52dd5290d44dd253e1964371cfd9d9bd30c0a615702dacb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
