cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3087"
  sha256 arm:   "5cd6918deadb20367c279c258c4c14344c6eee029bcdad5159e8aa45029c8206",
         intel: "9b02563cc8e1b3235b485dbe41c97ff84ca4c50ee794e9157538006b9850cc99"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
