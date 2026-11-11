cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3664"
  sha256 arm:   "5c5de9aa9c77a63b950a01868003e2bdf8fd15cbda4df73d3c547cfde4de8838",
         intel: "cc0ef07c23c941cd77514a6b6eb80e0961759baa5772c64b6e133d9bea4a5b3d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
