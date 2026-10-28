cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1845"
  sha256 arm:   "a2c3f2454de101ef1283c68aa24ba436c869a95f2adb5d52b2f941cbd8097fa0",
         intel: "d6ef1254b060ce023df5898d0c4b105413598be74aa9c7ee57f0e8eaae10e9b6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
