cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4484"
  sha256 arm:   "4e4161ace308b5a671a2a2bdf145dea3eb5d1cf60beb117bd857882880ac9c50",
         intel: "9c2d502b2317bd3618e0b06f636e25e1cc25d6b852fec1ee05439c1892c86e74"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
