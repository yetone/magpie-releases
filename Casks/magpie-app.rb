cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1945"
  sha256 arm:   "7e9ec0aa134e7b7bca6a4b16ccb6152c9c8e331611536085214bb1582b4ac6b7",
         intel: "f965f18601c6564f352a1b1b58ba0d45b86baf3e20702444d7d918e21e1c5ba7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
