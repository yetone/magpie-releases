cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3952"
  sha256 arm:   "2afb6b01675aec530546633db8df2b4c7776469d86ecf71016e27daaeba2e98a",
         intel: "1c93abf02adb2c0b4c4f75cd38346ac4a25c4c10b858b4012296030ac9205cff"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
