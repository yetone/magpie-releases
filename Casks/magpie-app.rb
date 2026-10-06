cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1080"
  sha256 arm:   "f59ad15b0205471907c2933e5d107d2ecfd4700e3e5bdb313e1a6ae642608b5e",
         intel: "6c5e9e0a0f69192f97cfe9a3f330617f97425d5a815aae1614b33b0c28b68c8c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
