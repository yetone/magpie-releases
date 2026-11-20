cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4600"
  sha256 arm:   "6e86aeff14492c2aacebccadce333a2f6021c87414384c774e24ee9e7e4b7ac7",
         intel: "21fb5daadfab2f52c63c1a4af8cc466c47794b091f30e402297bef0190e02181"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
