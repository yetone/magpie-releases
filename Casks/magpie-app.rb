cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2511"
  sha256 arm:   "22444c0e902bc5e533eeebb2fce275da589e20932d41f8550dab8e8364921dde",
         intel: "4de284ec98c6894164c568c3a983ed88239bee1f584dcb92464eb3c6480a2200"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
