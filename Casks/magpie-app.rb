cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4630"
  sha256 arm:   "463e406505e09146bc0b7efc4e69eef375163d495acee2c0a2b66f09b16533ac",
         intel: "034dc1a41a3bda1971772b9ef716a606a64c9f7f3327434293d2421c8cd65ede"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
