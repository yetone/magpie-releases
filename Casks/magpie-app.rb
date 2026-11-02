cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2686"
  sha256 arm:   "04712dc5ec15860128cccb8adbf22987eead9ad2b7c61c4439830f66d73303e8",
         intel: "75b7e5ff31054f0d4a3bdaa970f6b72f2f79a49dd8f580805f302ab43e024864"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
