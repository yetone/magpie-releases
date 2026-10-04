cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.893"
  sha256 arm:   "524a9af33c62dd174265a990a56c3feee9b4de145eef11b34bd77f251c14c590",
         intel: "eea30e089e1c7f9c66c57d2f6fe88d63e98954cd97d6000b632291142a3a6890"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
