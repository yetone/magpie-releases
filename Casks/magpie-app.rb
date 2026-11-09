cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3400"
  sha256 arm:   "fc0f8f13d9eafe3b385c75f8b3fa4b066e7d7ca6b7aef851141c5725a1c7ede7",
         intel: "a6bda34354e42ce3fef1590f14a65b22bd5d23f79b118952ddc722f698d0d704"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
