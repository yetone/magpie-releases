cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3432"
  sha256 arm:   "eeadf7b6c84cfb1bcf83777e2cce3d6cbed8e85ae76485f8a3285cbb7a138175",
         intel: "f58121c92c20977f71976bb378c700d781ddad29694874dfce231b625c38b46b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
