cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4443"
  sha256 arm:   "6442832b2b5bcbad463995c6ac1bf53ca9ae53ce9e82b60bfcad34a6bade5d01",
         intel: "7741d5746e84c94b16210917d8f7e99c6ae862f535050b04b13f896e1c926de2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
