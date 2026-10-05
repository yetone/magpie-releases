cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1018"
  sha256 arm:   "4510fad52f0d2cecc6af4502af9656c36fa4aacccd55526669f043953e6126ad",
         intel: "731fc56d33276b58a054bd67999a5469193c9fcada2ab3db276d5ee891fa1725"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
