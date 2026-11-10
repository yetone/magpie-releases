cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3542"
  sha256 arm:   "d44c05026c086ad9bffeb242cf598a570a8404493634fbe3bad3ead69c52fa92",
         intel: "95d5f2d37803b0a4d0e1f4f932380f233bcce56d7680f39108d9ab055c6ac08c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
