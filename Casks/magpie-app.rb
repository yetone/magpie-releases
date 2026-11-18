cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4455"
  sha256 arm:   "308c4ba1a854f716655b64cc02d77a083cb1b2d5dc41b0b00bd342e5dca913f2",
         intel: "e77deb13dc4241283c2ade241fc25216d803856fc61262364c2c9b5819b547dc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
