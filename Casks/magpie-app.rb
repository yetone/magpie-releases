cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2895"
  sha256 arm:   "0efb1835f22de384a51c414f22bf1dde1b7a8fb5ac9561dcfcd59568fb9426a8",
         intel: "1c58aa8e68942377f5f1a57baab8f074232b68380825148ecc032bd584a41902"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
