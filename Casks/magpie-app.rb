cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2252"
  sha256 arm:   "30b5fa522ec52773146aa59bc6fc8e74026d4ed94f4ac1b0fefaeac12f84ee20",
         intel: "1e297270e54450a585d7d8718608a4ac3c84ba8c48aeb588acb2f235d0a8a82e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
