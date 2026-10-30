cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2129"
  sha256 arm:   "01495fc563cc085e22b1b75cd8b286706f36283925581dc26594f29a5a859b41",
         intel: "6436c112f4a33bc6e793e54dac871a0d10b495153cc3f2f801ab2ba7648ac036"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
