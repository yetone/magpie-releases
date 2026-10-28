cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1888"
  sha256 arm:   "8f190ad33b083cc77f9fb60916e67379f2fa0b0bd298956a10f452b4cffde679",
         intel: "12e608b86c5d79566312d33582019ebc00ccdaadf9c6a304676dab131a649be2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
