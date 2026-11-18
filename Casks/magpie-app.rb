cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4453"
  sha256 arm:   "020b46789752316e8c9fa8e6c8fad91e9303f5143147be4f5c525d6ddfb72291",
         intel: "1decfe643ecc45481ead5e7359ecc494484c6e836ec240835ef83e88be6331dc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
