cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4737"
  sha256 arm:   "ee0d4dfcedd2ad88077428b6a609288fca9ed8aca1141c55212f5239c949fa67",
         intel: "d8c593bb204ed2cb0690b4802154d78434d88894cec82a0c782df37cbd0f93d2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
