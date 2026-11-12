cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3823"
  sha256 arm:   "d0fc52a9b285ff411326117d172427883f2afc10a16490f5e5f42ec77cd9ceed",
         intel: "86a9e620a376d3f02de2ab1fa0d8305c132710b5980b9fce7334e887ead080ee"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
