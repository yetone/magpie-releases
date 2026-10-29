cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2025"
  sha256 arm:   "6696a195c683a5a908f4c7521ba05ef72faab7a6f067b53ab50efa1abb7343fe",
         intel: "33a9a1e4007404ba908d1391bd5e126a5437cb035b97a25c4a458474549549e4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
