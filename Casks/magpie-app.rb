cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2518"
  sha256 arm:   "3b77c1ffce5e56ad9e304c9cccb966e2ec1abff5ef70e589872baa1c6b1538c5",
         intel: "8c0ab0c1f1caa51be1af639beecc7e82d585be3197d7cbcdf47ba7ba0ea6e9f7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
