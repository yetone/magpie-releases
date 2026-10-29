cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2003"
  sha256 arm:   "ee1e7dcfacef13d0b69371c9d5b4dd3770da9a860dcdc3db72238cb22754ff8a",
         intel: "74cd3c9112ae1e8ede1ac2cf4c597fa5853bcc61204b3edce95957d1f7184764"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
