cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3733"
  sha256 arm:   "10f79ca28f759a2a89e1773875b6cd176fa14fe4a02ee782718ce352e02724fb",
         intel: "8b50f86373e34d0c589b3ff1a5ef051091cb37e513b53bc5a3bf0145e122bc2b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
