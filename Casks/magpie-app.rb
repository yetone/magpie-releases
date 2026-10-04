cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.909"
  sha256 arm:   "a3b979bc29000708aea7eec9ae4d00d2c09a03711dd47336c0e698f8229ea4bf",
         intel: "d6b9b59d0f58a886230097c952cce57c1819243c472a3a7f6879d61ae1dfcb55"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
