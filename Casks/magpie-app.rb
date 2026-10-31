cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2337"
  sha256 arm:   "7972750d5d5b2bd62846cf041efab570848b60285174cf9c703762f33777a0d4",
         intel: "962f05072622a1a5cc164b5c842672f660e18e392ecd058ac269ed26b62aea67"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
