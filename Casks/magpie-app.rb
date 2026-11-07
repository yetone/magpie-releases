cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3270"
  sha256 arm:   "5a99df981f055618e88eb8cd55abdc4547dc6758d701b7b4d7c71f258cf19ffc",
         intel: "7a851caa99a955c9ae29b8a9e0c0f3b28ede444d991dd2a1e73e30641a26699f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
