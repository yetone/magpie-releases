cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2443"
  sha256 arm:   "e0c7a8aeb11487991a4a2c68c1847e3b0246f10ae1a3269859b56051bf67b477",
         intel: "c1643be9b5451a1a033261da6b46c583f82d2e9a2357a2238dc5d5acfc4586ac"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
