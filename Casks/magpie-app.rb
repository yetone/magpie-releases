cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2445"
  sha256 arm:   "9458bbd16dec6b888d603af6cdb7f02b2e7d1e13c4a0aa18cc39136db8ddb2c5",
         intel: "9280f1a506c0109309306836da51f9919ce35e97d079118b5aa81c447509c91d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
