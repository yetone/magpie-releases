cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4674"
  sha256 arm:   "cd3209323d20ff179350ef24e07813a86f3c57cd7511f743ea2fba61d6e61ab0",
         intel: "22d70e3c06cb1577d2825d5679e585d3ba550fa588cf6a58379d7513f282f3d4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
