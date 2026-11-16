cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4291"
  sha256 arm:   "fd5829f93ae400ff3433e7587d8f438c939e36575de160ac9d83875914506193",
         intel: "5e06589cd133d1a72f880807b61f519ce98accc70cfbd0be59cfc53a32c885bc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
