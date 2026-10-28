cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1861"
  sha256 arm:   "62b5e5f6a4898a4fe63dfd72099c344599f4b54ffb18e4c7934b14ebe94d931a",
         intel: "40687155633f2242265f63fee1ee5c5ea72736245512a6f92480a7c7d1a96780"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
