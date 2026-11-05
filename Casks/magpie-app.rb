cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3062"
  sha256 arm:   "3c8ec674bb39f31fadf6276636331b2fbabd2bf0c525487d642becaefb9a4d39",
         intel: "df8109f77e1325069f97f38fe8dfd908cd471647323894a53fe23bb606e5d696"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
