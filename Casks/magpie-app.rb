cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2350"
  sha256 arm:   "5f3675c69a33867c4fd0a14484cfa2e45d09cc6278439ae0f6089bbf7b0202d7",
         intel: "8eff63d4cfa1a9059f42c138009724ad73e6337be5332c496e1ec8de5c125f79"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
