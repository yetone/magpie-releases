cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3642"
  sha256 arm:   "7584db2a2d8d8f990e03dedfdc11dd3bbd88af8f7d3f58c84f39330d6aa181ab",
         intel: "7c38bed61738014f17951f8871154bb7b04c13b875fe793ff25969ceef11b0a9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
