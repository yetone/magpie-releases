cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3241"
  sha256 arm:   "b45d7bcf9d8eaf1de4c0b62b15969777a9f421002613caffbc9ca41bbbff4917",
         intel: "5022d4cfaf7a2bd97103f7a4fd5530a9c411463c455dbbfed8fc87ff2aa653a5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
