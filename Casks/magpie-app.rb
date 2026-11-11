cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3763"
  sha256 arm:   "6dd14b3bd1659224cd8e73e9f8e2ffde96df4b48b9ac9f2dfa12a495b1e985d7",
         intel: "455997090e4dfd7064076edc1e5a63d1618ec4a75b520ced6002c57ff0985234"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
