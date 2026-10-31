cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2463"
  sha256 arm:   "89c415c565d16735fa5f876dbb0542b684d44c2615afe73913e0ed8ea6951dfc",
         intel: "e9b872eb3de358973cd7b03ffc1b92638595afd8c75a1cba0ae0342c8b4489fe"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
