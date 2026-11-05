cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3004"
  sha256 arm:   "f5d5883bbabffce09b71e02e9b2fcf3ec8737f72c713b3fb4ee456fa7421d975",
         intel: "d456a830cfe89a803d748d3e2f72949f13da4d17c26da05139dfc2cb1530267c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
