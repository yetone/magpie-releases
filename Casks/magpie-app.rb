cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1923"
  sha256 arm:   "2c8230de59f7b3d2b4d1849b54c650cc4412204ae413dc4b893fc596bd7c00f1",
         intel: "e147af05fccfc7133c47e2ea0cd9fe3645c97d8008fa301201335a83cd38e1b1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
