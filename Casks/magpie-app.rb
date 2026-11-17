cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4402"
  sha256 arm:   "2ef440dfed0a3a6381e4dfec1ee5f9d00da488bced7c63e57b726929269fa2c8",
         intel: "86a5ba26602879be4c380fdc849b9115d2ceb36d6021a00331a96b4a9d470988"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
