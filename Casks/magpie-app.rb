cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2203"
  sha256 arm:   "e8e7922439334079d32ef18e9a7063bdafc32830353940c852344270b456695c",
         intel: "afa1056fc127d5a9ad8179ce108a54f485406f41670caaf84587eec0df70275a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
