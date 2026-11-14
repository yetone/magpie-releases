cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4107"
  sha256 arm:   "2c727c1a2d678cfe74cb5643dfc2d2ec7cbccc8d57b9aed9191b05305ced8a57",
         intel: "9bc71c19e28cd7c4c15c6da72635697f92ca6ee959a55c8b76f543de826d9956"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
