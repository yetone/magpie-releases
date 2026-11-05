cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3015"
  sha256 arm:   "c8eb85f9551fcfc8a06516e6ee3087ab34ecd114ac0ee85422b8971d71464520",
         intel: "20698d618ca8c24918667364e2d1fb5ef7b2a1dc0395ec443c96bbeffb1e7d6e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
