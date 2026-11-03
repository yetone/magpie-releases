cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2846"
  sha256 arm:   "93ba63e5d89f5d87c79549f87b60e502d20af4885ccd6227eaf914fa2b6f75a2",
         intel: "26c9c2d4ef04c576546af8786641fc3dcf526edc6b2c339b0790920b4d5fa23e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
