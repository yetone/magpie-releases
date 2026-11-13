cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4068"
  sha256 arm:   "8b60bbdd8005a6c6a22e73eabbd191cce297ef7b4580465537ccf310d679b2df",
         intel: "14902d56bc1c58b2ae8eda597c02bd4eeb6fc3c3c7c35f38d9124b168428a860"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
