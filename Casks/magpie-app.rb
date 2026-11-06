cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3175"
  sha256 arm:   "6e3265fe91c9c5f7e98a06c1a54da3992b20d964e62f28721fe05ecaf2ea105f",
         intel: "b3d7874cee1774d7d39a13482e6a62052be532d4f038b1bfca3e1d5b588f7aed"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
