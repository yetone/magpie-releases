cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2737"
  sha256 arm:   "63d6fe9062f4181bdb35d6c75ad6654452de8ad294b4ba45665bb6d5b4f65e30",
         intel: "5b5058b2b9adacaadbe2d5b4b139b9d14dad39ab23481313bdb20a776c5d75b8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
