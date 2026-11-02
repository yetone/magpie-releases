cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2667"
  sha256 arm:   "20ef312c38629204c5cc0eea347f8a6edf118c37506d04bad1eecef709889f09",
         intel: "7f5fb6d6bbefbcb63632b2c8574962bfa7aa745f93b37d89cf88f6fbe0b66232"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
