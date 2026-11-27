cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4972"
  sha256 arm:   "3bda690d111e2a27ebea1860d6f78c8d87b81ec40ce515ed644fbd230b52bfb9",
         intel: "71345ee5fed1dd0a4d57a90158f9d55a334010106cbe4e8cc0378335c059521d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
