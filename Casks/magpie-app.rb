cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3234"
  sha256 arm:   "e8f630fe19774976c892e6baf07055bb43ec142282fd270b98cac1e51ed25635",
         intel: "7cb389eac180d5850126db07e0c9f98683852183ae26bd0cbdb804bede9165ae"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
