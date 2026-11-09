cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3421"
  sha256 arm:   "357dc4ead94adf17ccb30aa6cb5d4151cf9b5f9192b33d1a1486c5a0653c0877",
         intel: "3a58aef89b6255ea102eb10fed5cae27f90d3f79a642e8594854e550d1c3a1b1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
