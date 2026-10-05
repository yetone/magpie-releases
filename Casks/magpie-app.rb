cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.940"
  sha256 arm:   "d070b334a369d46ed8239b6b7ac3018026d8f3e46b62e6534fe984406bae0c98",
         intel: "dbf21542ecfb33c74c5cb48862c6c8b755d3aef6a4450ea91695b564d9759ac8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
