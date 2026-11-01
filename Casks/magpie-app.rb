cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2555"
  sha256 arm:   "e454e5e13706a210f74b048d73dd51f01e0427390fa6ab9dfabb140357e5eacf",
         intel: "4a837b51755c08b306e537d75226ceca024f1dc1fa43d4ddaaf2eb8c363d4cf7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
