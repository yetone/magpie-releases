cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2009"
  sha256 arm:   "cdb42080a58ac7eeedcfd390854bad4c3437943f50e70e045300022b3e4ca46c",
         intel: "e8e608553157b336be00d03137a56a9ea2f274bbdd1e4b7d9e664bba449032b1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
