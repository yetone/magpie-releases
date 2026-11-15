cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4264"
  sha256 arm:   "b2ace5c6f1d3d5cc93556dab72322479eb6fe641f03e75f29f4eff1ba9c3873f",
         intel: "6469aab4353ca2bd5f4c9bff37b2e02265a1f912f5178fcfd448f37ecc6a516b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
