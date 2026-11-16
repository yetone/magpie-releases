cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4302"
  sha256 arm:   "d55594866b20d18f407ae4d7b15cdb03f66ba87aaf59921eeff88d71bfe6626f",
         intel: "daa97f8df1bd48c2fd6212ae4ace52bd596f07105b882396ae8001ee52e6d4a3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
