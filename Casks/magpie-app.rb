cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4838"
  sha256 arm:   "8018d9f5be5f1de5e794dd07781b25a11143105755afbec5fe893ef5aef2151e",
         intel: "eea32bccde2c5ec94eadd6bd5d561b17316bf5a809b94701f43a4e9526c6c5ae"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
