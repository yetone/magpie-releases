cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4271"
  sha256 arm:   "2ed32f1c900c32e64924d9681d938b361707f86cc7beae93eea49a27115c01e2",
         intel: "f1dc54c94ac9b5ddb4ff2baa077263bc946fe13b14ec355c42d14b775de76001"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
