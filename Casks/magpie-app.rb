cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4243"
  sha256 arm:   "9424aa93394909a8ca60c2e058bd6f7a2d9d55bd6d14c0344a5f6cebda68af15",
         intel: "6648fad89026034e800f639668fedf6525c889416c04dc10359a9256b51ec608"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
