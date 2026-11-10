cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3537"
  sha256 arm:   "2a51f6531b098e2a0825767f4ca1445fe6f32fe6e9637be3c81d4da925da0f3b",
         intel: "65a18c949f890892db6cab2fc76ab0d70b9f0360f7c18a86cd27ac3de3b74ef5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
