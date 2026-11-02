cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2747"
  sha256 arm:   "801863fb8f2aa840fde5d7cc4810e3eb0af2dcca290fd476f275be51eef893e5",
         intel: "2c47ff53ea2f19086ced3c9960fcb305de7e29a9d91af9155318b9b89aabaa4e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
