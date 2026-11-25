cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4790"
  sha256 arm:   "bee1019cc3064b43997299f75d277aacb92dc848ac33d56f4810b8f95f72b5ef",
         intel: "9e893817a0ffdf8334a7c3c4bb8621c655090431523d194da08d9e6982958dec"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
