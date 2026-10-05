cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1026"
  sha256 arm:   "c9e4bcacfd6b7c93c45a6efdd422a40e2e68a6dea3040d4b2879955d1fd64456",
         intel: "f155a3086356f4213783bd72164672f825c25e7ac1b83e5da55b486d5da98657"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
