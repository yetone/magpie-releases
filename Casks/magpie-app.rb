cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3702"
  sha256 arm:   "765874514de2741b79ad3d64b47f1b62fe9e43c7955f1e13d5e4b33f059a14e0",
         intel: "82251f78ef45066427c6e412978cea33283a22d351b64c8edcd67f6477047e86"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
