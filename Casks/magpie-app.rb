cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4262"
  sha256 arm:   "0c99019e68e12aa71c64edbec2c2b98315b9d837e97e375d9aa4a88648bdc984",
         intel: "152e0edb20c437f54807ac42772fe849fa7716825519f3007ca50416498f01a5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
