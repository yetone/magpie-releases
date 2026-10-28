cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1878"
  sha256 arm:   "80d2d36870a004a0a7cc5e13bde71c18cc2581ef0cb31db9a36604b89e656a1e",
         intel: "249ee0565a9708e6cc1f868722e2c75764a7ac1a23473380b7cb8c1c1dab4d72"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
