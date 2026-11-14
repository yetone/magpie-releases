cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4213"
  sha256 arm:   "c51ff178281cb851ff3a607afcf1328645fef71241d92d4be48c3aad0c3bbea2",
         intel: "34f6dd8b34fa590d70b4cf4949d0c1537693ea6dc18d894044bb7cad33e592c2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
