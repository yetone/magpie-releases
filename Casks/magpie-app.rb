cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3264"
  sha256 arm:   "561502d931328b19d62a8f5f5cf57d71984fa8886a48449fc25e72bbf9edf62d",
         intel: "3d7d514676c3ecc1086b7d38025f6baf86ec8b38c545b7d9e58ea494d27e56a8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
