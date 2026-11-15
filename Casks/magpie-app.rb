cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4280"
  sha256 arm:   "cfd26fffd912dbf68e0209b4d82f3564c2ddb0a0a26607e99cbcb3a54e9afe88",
         intel: "1b27d19a556fe80fd06cb5e63adb7115870b6251f942608db8cb0da117260d44"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
