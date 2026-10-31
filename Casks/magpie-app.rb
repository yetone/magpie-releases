cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2441"
  sha256 arm:   "3436e01ddb06812cdd441b2e397d98f95631f5fa63e60e4d22a69d93fb0b16ba",
         intel: "587a66768d105f258d64a9d3c37ced19f611b3a1fc0debc16139903a2ae31156"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
