cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2343"
  sha256 arm:   "ca0846a5d3b41c2c7c05e66b9d671cc4946e4c9b1885315f87c47343d8aad9b7",
         intel: "d1dfb5cfba436e4a1ccf6bba66f1f238556659ebac9da36de29e14bf8d266e4b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
