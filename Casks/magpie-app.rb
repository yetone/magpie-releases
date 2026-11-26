cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4864"
  sha256 arm:   "9a0725bb2dff995819ea47cde61951e20f35474e7ee1b83c775c804910917524",
         intel: "49464900800e49c574bec539435cacb9ecc5d57128fa9a159b64098c6b2bbd39"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
