cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2372"
  sha256 arm:   "401a8916730cc157a88ba44868e36a361126953359c349c96c2ee1ae95bc91ef",
         intel: "85ce43d453ff08a290ec8da2a8e2354909c22de1a5eb7c3daf48d13c29fcd1b5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
