cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2810"
  sha256 arm:   "a7f5dd5a51ec79b382f3fd7ac9912ec70a05f4e0ba0b2afedf6a31cd8eed030e",
         intel: "dd6eb2062d815cf2d562192e7606f6d5a26ae9f6060f44c9778e70312478cd99"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
