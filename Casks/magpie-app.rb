cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3887"
  sha256 arm:   "4d12347221087971a9fa58a3b6bd1d1fa5b41da877ca6ee0d1ab615b6e224975",
         intel: "441e0566137dfa24394bbbbe1b4390098c5ebaf1369425f701fe58f6f0b967c1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
