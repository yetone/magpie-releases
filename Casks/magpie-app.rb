cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3658"
  sha256 arm:   "fcdccb8e7deb2b51da02c2b8b50057928e37d691b29e73c74f13548adf213f70",
         intel: "c4613f2c3a59c13fa1ce44d1fbdf30177f8e3a0c22177f5daf129fee525735a8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
