cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1130"
  sha256 arm:   "5dfd6b4ac50ace7b7fda715c9bd13e9e38ae7726dcf91047a5da977fcf565d9b",
         intel: "04d8fdd2c064af50aa1d332a9fef8bff17a792f55f70f618a3d04d9aa3a95e91"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
