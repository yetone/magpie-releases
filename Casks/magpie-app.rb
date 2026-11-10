cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3636"
  sha256 arm:   "f2d7214b5d38f396f88ac0deb4a94da1b0f777cfbeb201e710444812135ce996",
         intel: "819a1a7954b95667d61cf3c7b21a0dec5ed77fabb2c712d3b952454f833b3d67"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
