cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2104"
  sha256 arm:   "176c4d5e44536b0dc29e5f818ab3ad8bc5caa104c7b700c61537aac8c148c98b",
         intel: "afc1a9e640c44c63cd01605a9d4cb113b568778209d80ef7f1fe9679d1751242"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
