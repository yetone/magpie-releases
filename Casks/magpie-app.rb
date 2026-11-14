cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4110"
  sha256 arm:   "df7570ce696800748106106976160751757ff40f986240cdec568d881001de99",
         intel: "2a1b7ef3936d91f59edd14b975fb321f0279d13eae70ed2c517a09a97b08d96f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
