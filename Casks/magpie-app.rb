cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4105"
  sha256 arm:   "1b8271988eea9e68c2d9c6d8d4a9b18e14db318730abb2aa6c03ae3f3a2531ee",
         intel: "25e70f0997017e09fe7cde5611b920def5ff8b704c15b0e463f35190494d9a25"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
