cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2760"
  sha256 arm:   "7a75f2067ff9a7baf865f504577168fa4f8a6969d392f05954f43da1ddc52365",
         intel: "bcfb8690a49adbb9bebe7aa2a6a0918166b2c84bb4edfd043712540b70f05dec"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
