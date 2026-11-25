cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4786"
  sha256 arm:   "33c733e97639b0469eeafd68e68c59a442c959630909c3e793b728d43a54749a",
         intel: "e4c6d602def7dbe37e724f05a7b693adc5824cd04aa759cdc44c9a6dce6c0e34"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
