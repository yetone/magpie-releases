cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1839"
  sha256 arm:   "5327f548c78df968ccb2c504aca6545e264cd1df68c85dc69020cfb447e110e5",
         intel: "7a6ba969aff90c460c0a1bc43482b908b436d89a3d6b85074072e24e86dda32b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
