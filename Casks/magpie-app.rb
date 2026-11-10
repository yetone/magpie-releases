cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3513"
  sha256 arm:   "a93019d8f5775fb64d15d76431e1a8b725b7e04537f43683687cba91ac669ba9",
         intel: "5f66b4bd2bbc55a82f2e2918ce276bf2fdc437a6419c80dae1f4d804c303484b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
