cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2432"
  sha256 arm:   "38b4d4be247c4d2a7cab48500c02608aeeefaf7ca65a9566743f428f7fafaf9a",
         intel: "72c16530fd34edeba5f5c6ef9d0219685a85354afe3a606d1c31d6bacdcb6455"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
