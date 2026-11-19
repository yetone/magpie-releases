cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4561"
  sha256 arm:   "10faa4b6db579047f915c5699167c496f76b3a7027b2f771725ae668974cd2df",
         intel: "7b3f4d436181031b64c6b0a9061d1a235e63e7d208b9cd06a14d5b9de7f98170"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
