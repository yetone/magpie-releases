cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3186"
  sha256 arm:   "3da8958f65b500032bc4e99322b39dcea14ba8fc595b14457cf6eb54d4529068",
         intel: "5d235954c933ccfc4e380a545acc15d6464db1cc607bf53237e5fa3b738fde02"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
