cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2305"
  sha256 arm:   "227c496c8cb1eb526c4056a3bcac9255b5120697615fd25797fbfaed14d85b48",
         intel: "4954ef0ab992803ff37e97483461163b7b07af9da58bea59a63c396551d846e1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
