cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2285"
  sha256 arm:   "5745708f4e1f30b4ed6081455a5b2556963873c46538f692114508c076566a33",
         intel: "185606b7d486e75c4a39f637835334847c58eb2519551f48bfb5dc580da6ab8e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
