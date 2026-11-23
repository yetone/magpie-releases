cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4710"
  sha256 arm:   "2e76a2bc0a84f8a046e03b98a188524469a9e29ba9b1849a0bde8bff845cf1bb",
         intel: "a40f6dca68a96f9c1a8104deecd4e38f6018acff1dec0c56cc5dbcd55639f6d0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
