cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3257"
  sha256 arm:   "1f01f25acd3c40e81c7ba878ad86cb78209b63176a93e6dd5a05ecb6fef4735d",
         intel: "f3c82b0e55e0f848669882948f05383df21a0bbfb7ed74a63f92b7b4f5a2ee94"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
