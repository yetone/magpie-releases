cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1149"
  sha256 arm:   "5402c0832c693c7066c17e8aff12f30b1252ea1d70f5060941c789020cc87223",
         intel: "17dee965290c48e1b3ebc508179438d88f1ae26e1c25756b7a3bc33ebb86f517"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
