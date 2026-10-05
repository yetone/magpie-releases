cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.935"
  sha256 arm:   "66044b60f55b66f2010c721b6a502461330dd8fcedc2f2da49654bc0bb6a9ce7",
         intel: "339cedfee81a687a12054ea65b01fdd1496085bf754d6d6a8d193fdd61517cba"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
