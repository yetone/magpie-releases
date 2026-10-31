cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2401"
  sha256 arm:   "62c76e58fbbbda65ac552eafa070c6acddb58476353c70f710de3d987412ca2a",
         intel: "8c73602448fff908e029bb269cb46b22ab07395d2cc897cf6cc36f5d4c661a68"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
