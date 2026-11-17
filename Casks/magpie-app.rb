cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4384"
  sha256 arm:   "2e5facfdef2b69690becc0f68779b58409be8d193b9b3ea2ad9d27521d6b6563",
         intel: "3b33c1e8d34afbee6d5640b5370683ecfb89c260cf7e08bf74f3f552b491202b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
