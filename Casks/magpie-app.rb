cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2480"
  sha256 arm:   "28c0b0004272b619a93308ccbc9fad3f6f114dbc38e52ff9b85a47a1ec371c9c",
         intel: "14ea96c0b2fc2a5ba4f30af63447dd5b95b53f4d223a82d452f3bca44e1eb6b1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
