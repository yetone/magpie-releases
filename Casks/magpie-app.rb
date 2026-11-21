cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4626"
  sha256 arm:   "ee9924b8e027cb40c14b8a6de62338b3a0cd94c275f325e554c8a0003d36e8b3",
         intel: "fa650e286686b46da09e923ca754e57d298b660de0b59dbad33a44afb54bd2e5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
