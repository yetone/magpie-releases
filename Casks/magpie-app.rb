cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2066"
  sha256 arm:   "9dc6854c606b5770a2ae93a577cfbff8e8aa98838f84e85285a29116b0bc4ad1",
         intel: "2d6e65161502982c952e62f7705ec82ac7efe56f8bee9ce2d71c73228c1ef1bd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
