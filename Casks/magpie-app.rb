cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4061"
  sha256 arm:   "6d0dfcf34c47eb01b98ad29de8b50e03bc2e5a53eb8c497e52bb2a97fa45b25e",
         intel: "697cb5f364fbbe714edd45a1a47f873a62ea9746e7041ec76c0e7b7e0e49a862"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
