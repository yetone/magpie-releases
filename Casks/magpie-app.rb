cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1116"
  sha256 arm:   "e321e338aa732e9fbb3462d0a6ce51616c58c96ebff8adb438a0e9bdf33d1b2f",
         intel: "1652df9910865fc28e24d26cc8a3b823544f325ec78c080940251a8a64e44179"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
