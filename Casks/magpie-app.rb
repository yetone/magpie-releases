cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3429"
  sha256 arm:   "a6e8f5c1330a94337c0f077a227a5bb53821f875ff96f9b72805865fe65798ba",
         intel: "e6fd30dba01b3ca592b39c8bae134243fcc6688a67a0c69ffd07387949d46e05"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
