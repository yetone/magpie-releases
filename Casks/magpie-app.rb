cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1995"
  sha256 arm:   "87ce44f290f9e2c170392a40235eb6fd7f979079b1868f1150b5abc1bbce16d0",
         intel: "b62688f82c3a2500912f41f6360b06ad2aa3595e295268c45dd361861b64c278"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
