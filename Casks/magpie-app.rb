cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4289"
  sha256 arm:   "f39897ee9540066f5cc0563cf5fb9e6074b6e926d4cc4d015f1b4f53af33a6d2",
         intel: "b85eb3b56110d00e93c50c86de3907320821b1df253fcf95720c1edc52f7150e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
