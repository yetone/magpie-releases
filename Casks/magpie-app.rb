cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4817"
  sha256 arm:   "08001668e02441f5a2c5a3d2a5c8c6bb7c373b4c7a2e793202d14e786a072e23",
         intel: "26a7c8188e5c1fe8b25f60c2efce76a213850cd0c464de2a811c568e04f98eb9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
