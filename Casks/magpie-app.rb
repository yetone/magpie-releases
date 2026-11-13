cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4082"
  sha256 arm:   "88048d88112226aacde9b6de0e7a145bbb4d1a11c310d50ec7270adc6f2e6018",
         intel: "704c71be8fb39b7a53688a66fe11fd7b575fae0c323842c163ceba9f36e74c39"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
