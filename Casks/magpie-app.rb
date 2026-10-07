cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1098"
  sha256 arm:   "4c0cf810b10d1ad4e168a25c5cfa00526135e7e006d7f0445e5e5c8b221c8030",
         intel: "3c199937b3ea5b2a3f0da67092d1778f297d326f259fb9e18a03d29b4982b914"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
