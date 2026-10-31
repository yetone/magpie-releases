cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2394"
  sha256 arm:   "326cf186c63cc12cd665467114919ca959c619f50de60305174d6eac932e322a",
         intel: "7815a2be6d7f32f7743d19df0a170da76efaf1422d5f0741b5d9bff126ae97c2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
