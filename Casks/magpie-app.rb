cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2124"
  sha256 arm:   "16b847310afb165265ecf7cfe49f7d166b90dbe56effbfc47b182ef3bf7c9a2f",
         intel: "34e12729b2d81c62d96e277cb9b4f1db4951c4621b58078fb7db2f8d91fc7c05"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
