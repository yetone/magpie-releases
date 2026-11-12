cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3946"
  sha256 arm:   "06d8ff0a8ef864bd458be52da4eaa45275d4dc3ce0b6db05c714459704686a84",
         intel: "7dfcdeb2c34b34be77d0d0e4db2d2543e1a56523a9d47c03670a5ccc21e4aade"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
