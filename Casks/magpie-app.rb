cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1085"
  sha256 arm:   "2d74b0d9ff6a8c9a769bcf5b48cb838fd922c0f8720daeaf14bfb9b5dc99f03c",
         intel: "3c1ddcfa566d65a68db4f34df9a2cb9af65331107e738fb7c1f135af49325686"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
