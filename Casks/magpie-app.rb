cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1943"
  sha256 arm:   "d501716219148f806d614849083cf4bbbb262137b0bb44c13d31b31e4a6df0ea",
         intel: "d8de16696c22f7b851f2ab901e1417286ab561d798f830fc9d71e359286d03b5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
