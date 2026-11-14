cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4216"
  sha256 arm:   "4c7554b31a909804b52f57f607df2c2b9a7b5da80e6a30dd959e3f0627d9635c",
         intel: "77620e85d036941b440f3f84d136a30a87f8a3448f465c568cbead8d5737ca97"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
