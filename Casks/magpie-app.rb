cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4942"
  sha256 arm:   "7220cd0cb3603bf5d5f3a1cc7fd4f78dd55c4ee51696b21ece2674de096b7f79",
         intel: "1d07c40b5d0376c0edf7f672891d69a8670c4b5d2b8fdf39510a994c6582be6e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
