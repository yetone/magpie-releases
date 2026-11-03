cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2812"
  sha256 arm:   "a15261492c06013a5e04a1201a08244d8b7125f82f90f215a53b2a94725ad9aa",
         intel: "29070c3059cd8b7ab71a819b7cb2b3a2d60f880138386547586a777fcd6f6105"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
