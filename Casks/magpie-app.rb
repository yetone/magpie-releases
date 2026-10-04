cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.892"
  sha256 arm:   "ab0ea794086b80881efbe9607499d5541c5eac54bb563557676ca29c496206c3",
         intel: "0d5e8e13d9450a577a311ea85049668d3ed002823bedca2fb2b8600e7b0d1670"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
