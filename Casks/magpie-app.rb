cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2179"
  sha256 arm:   "405ffda30eae96f12cac2a082e1958cd87537e06dc7b6a87752eb8bf7609233e",
         intel: "28f494ac89b794a0ef40383e00757e93e00616e1aea453cffeb0a1dc497a1ce7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
