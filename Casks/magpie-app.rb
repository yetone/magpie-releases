cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2103"
  sha256 arm:   "e2f26c3d07ce4590897b3ea96b5e0f451edcea660a74c51d4b3c91d88f4c369e",
         intel: "2c7bc2f55c87f1b96fe086abf0054f5f290e6785439cbc8a46cdc4ad2154b273"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
