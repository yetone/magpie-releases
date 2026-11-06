cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3166"
  sha256 arm:   "99e658840f05ad790268e0aa08b023610c96bf51d8ce3ed9129a2b3c8ee75e96",
         intel: "69fe249229a7e3df26fffd31b56b095afdba6c474769340d10411a24532c5f48"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
