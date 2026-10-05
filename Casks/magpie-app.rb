cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1001"
  sha256 arm:   "16333ed8a42421c3574a45fe7c40893d0e583d7b0416b0379d1a82f123091af8",
         intel: "022cabfd2c21696b054b48b1b8486ed60eb781385bea461559b9ab7a6b9d91ad"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
