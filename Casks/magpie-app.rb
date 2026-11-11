cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3682"
  sha256 arm:   "aa922b9175a6f18b4c8a8548d9aca74c0ad3ed8c5b1c87ec2469fcaa6dfd9d53",
         intel: "4a6b48f8b7d1bd27e367457507b34b1bc3010ac846e31ae91b46ad0df3994062"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
