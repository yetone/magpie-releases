cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2653"
  sha256 arm:   "1fa31f2fc7275f13b1c65ad5fa9e99cfbba4fa035525c53593c8d5243efbb45c",
         intel: "9a77e22810913aa399f74024152c9b1ce3a371b32650bdf282330287d5753b8b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
