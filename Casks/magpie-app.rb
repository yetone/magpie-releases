cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3488"
  sha256 arm:   "648512c4e7cebca1f5659d41f74f8f5f4adda2d84bec290181decf50f6ab615d",
         intel: "986b64304ec9a1ddd02f8a149540ef6282498c9acd89ca4f8a539b6973d17e83"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
