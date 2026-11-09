cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3410"
  sha256 arm:   "6b4f1b0b07a531b6f7b479f4c06173b5588e0a6f0efb167f60825682d9532ac2",
         intel: "420f91a8566b7f2c48a36db678ce46d234faeb404887a76d3cab3bfe1815eaa5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
