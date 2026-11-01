cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2643"
  sha256 arm:   "de397f52fd78b75c4fd3a601a2572cd928e86ed316f4229035427343c0bce746",
         intel: "fdc867641e2a0707c91cb4018f497c8ec4ece75254dbdc80aad0680a59793102"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
