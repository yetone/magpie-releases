cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3107"
  sha256 arm:   "340dcc55d98c50bc3126498f4087f75f17201041571b3ad53fd4e06cf96ea0fa",
         intel: "2b71153ec7591896e04816cfcd81c9606126e5220aaff6bb13682e8aee62a613"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
