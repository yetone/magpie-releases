cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3300"
  sha256 arm:   "b0a4765c41e9690f326b3fb7645e5041a0ce811fd3e5ef76cbb0a14fe5d9be21",
         intel: "c4dfabe1c61bd2295f0358794c8c7ee3a9982e89bd0477ce67758d6b0f54b8d2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
