cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2150"
  sha256 arm:   "a527ac19eb8118da44f1790d290df3970b287bece2ac4980e15af3d52ce881b6",
         intel: "edfeb02e22310ae939fbc9663e66bf791fd264c8c770de663eba8feff5e2b516"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
