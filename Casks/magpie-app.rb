cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3837"
  sha256 arm:   "8b2ff1035cf747eb96c70f44964f67013ccb880180316eb1c8f575267974e4bd",
         intel: "9cd0d37ec8c6a7215f74a37eca0dbf8b445b179d938773eb1dc1b01b04ea2484"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
