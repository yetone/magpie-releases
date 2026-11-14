cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4144"
  sha256 arm:   "83b75a7ad4837916e541eafa3605524a0c3e57456b9f2e9537f95de06fe2b8cc",
         intel: "1db90c2465e1b8eba21ed8c43d2e823398b1827b2515ad03b0780e98e8a87a8a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
