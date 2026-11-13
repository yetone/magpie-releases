cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4050"
  sha256 arm:   "76fb0760711b2d58db52d86ee077d1c952f62f860aab33ba5a19b23cabc9a94c",
         intel: "6041a97f73c015c9b5929312994e35242eabb9f227fd70544faadc6a7ff521b2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
