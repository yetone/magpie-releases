cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2553"
  sha256 arm:   "8a8ebab20730342ce5ba0d5c008ca0972d7f9914931fa123c390a47897f7b861",
         intel: "5167320bdafa3a9fe84af73c315057c6dd5b53318e20d5d359ec3e3f15110822"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
