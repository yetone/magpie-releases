cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4618"
  sha256 arm:   "dab255e04ec4b52ba4c0b0f909f857d3820f78b24ca1559d094e62016a64b057",
         intel: "ebab669d8bcf13a5a9a840c4ec8475e51321f623afe3477431b59d1c022adb0f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
