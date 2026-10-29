cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2075"
  sha256 arm:   "d8df11b3fadb640833ea6d2220460d19e16c1702f0e354b8a212c9b99ab73e61",
         intel: "9b4dcdd7181db47dfb446e76d218cfac2a37d5814c51f33a8f45d724c74c9db5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
