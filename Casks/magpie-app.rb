cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3380"
  sha256 arm:   "d8c080e729854cf4617c80a5ee28558cf4d5bf7d417f04c93471224e6074241c",
         intel: "5ead279c441ac7bf8275400080af5e8e5109f999ad9877dd4ce8f30083c59fb7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
