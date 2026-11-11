cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3669"
  sha256 arm:   "6758fdcd48b3c0031a88e509bce34c3b09d29821b093aece70b31bf2eeb9b9a0",
         intel: "d38d4eed2d6af10a968c04eb2a13ccb77c044e64990bd5f43ec8b5ec498f884b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
