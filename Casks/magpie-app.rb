cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4800"
  sha256 arm:   "311f6129667cdb4f7cc389fb35edbb4c0d60ba9e3878e6fb97115d546bdbd75d",
         intel: "5a6530e537c60205f7722650d4a604e262fb8a4abe4246d419d5ee8d29733a2b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
