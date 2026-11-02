cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2694"
  sha256 arm:   "789b2f537b227ae1502b71ed2c600dc53bedb54bf89070690439c3bb0b7e2b97",
         intel: "291bb2f6611005addc7ef29bf4f0d0690610d791ef78666434f82c6ad7edc02d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
