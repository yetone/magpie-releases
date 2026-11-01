cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2600"
  sha256 arm:   "247b14d10868f3a929530eb2aa7b9d64554dbe57fabceda298ba61e8b7dc2e9f",
         intel: "5d449433ee3d6d2cb6301797af5bb1911fe321ab393ca9b69f012a812bdffa75"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
