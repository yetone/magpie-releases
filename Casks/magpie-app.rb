cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2781"
  sha256 arm:   "bb30bc6ecb8ea97b78caf302ee647ec836bc59c8d5368c5e036a5a5c0f099382",
         intel: "cc3d2a2f023e35e82263cc02b1fd25168b6fdb30b23b1dad259a45e642ca82a8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
