cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3399"
  sha256 arm:   "88a577125d76ae85e703685c7cd10180d599f1e3de625f082771037d6e0b5703",
         intel: "51f3db0ccb6acba2259531bfb4be8a572c95090f0ad054ed1af63027bf3a2f1f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
