cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3829"
  sha256 arm:   "f5efc18f311d0526154e8d8a74b7eefe0379d4d6758f7ff01694a0894d143f56",
         intel: "bacb0518bd299eb082b3ab7b8d85df02124685173c2053191cab5ac91d2fd0b2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
