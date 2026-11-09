cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3389"
  sha256 arm:   "76ab21b33d7483a499e7faa6a3a0f4f5a5d6178c3e802732cf297d946d13e44f",
         intel: "fa97862089c7b10f414a7eb8fd9523e541ee2e1f0c5ec5eaa9dec8ae170f01c7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
