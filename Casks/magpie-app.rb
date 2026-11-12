cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3877"
  sha256 arm:   "342d2a68ddd548d89db67faaddeb5e962e614f30dae93dd5e7114189f4ab35e0",
         intel: "c6f5d9dc708d9eb24148acbf3a54a3df34662c6f396946d49ba139b97df65b6d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
