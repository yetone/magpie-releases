cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4996"
  sha256 arm:   "65a0331aa794f464c5e84f455a590796946377027c67205f560535f679250e3f",
         intel: "7046f40122bfb0e4828549e7a1f6229ccaff1d6ca6f1aca50776239ea4521c04"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
