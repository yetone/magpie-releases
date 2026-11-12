cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3897"
  sha256 arm:   "c96558ea98afb90b4ff084126cb17b62f10eb61738c615a5b0dba47f181147ec",
         intel: "23d4ee25e914fa8778f00eb6c044f0c90bf0b2eef769e28789ae6fc6dec7def4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
