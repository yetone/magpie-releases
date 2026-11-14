cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4179"
  sha256 arm:   "41d7a4fe5021815c65459461ef85dffb167f047eb24a5816be7d71a01c1667f1",
         intel: "a4d923ac52f9c89c0f895386d1c269c53149e697174b1c557b997c044143aef8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
