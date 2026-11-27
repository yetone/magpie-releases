cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4920"
  sha256 arm:   "8ebe2c15d3f6c2f7262126e07faf916b88cf0251733d0af219be4fbe04ab59d7",
         intel: "e3e8a765c66bde7cc4cf4b2f013621110d985f75ad1ba082ec8c51659d34b467"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
