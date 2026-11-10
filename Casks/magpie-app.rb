cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3517"
  sha256 arm:   "7d4522cc2c87ade10335b5c788fcaf69a02e06578f11843c744440fec1d533f8",
         intel: "a27d34c165f7ae3620a02cfbd63aeef976967ec26dc29f266920eeb174c11e24"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
