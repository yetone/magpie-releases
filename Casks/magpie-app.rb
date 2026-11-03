cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2861"
  sha256 arm:   "3b7d85d0f5d3ef04ee8056ffadb03585d1e7d55110c85e1dcb15a8cc6f3665db",
         intel: "4c032fb5c9af826ea5959c4e9a5b4291842036ab3eb4e8c6b71b04c2b2f7f9c6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
