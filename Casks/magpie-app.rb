cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3057"
  sha256 arm:   "0aebdcf0a3c8fdfd91e8e1c35281e5ebd39071b8ffcab2c2da47ad4b92983b37",
         intel: "dd087ae412d5cb0f7eafd3756984e0ec087ad91237d08e7aad31bf430558d1ef"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
