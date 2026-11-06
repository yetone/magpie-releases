cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3165"
  sha256 arm:   "aac36c66905b632038fc1cfec8a07ee165564e88833795e4ca0de967d77fbe89",
         intel: "ea117554e82d00d8d4ed7b255adeb304e48221744c2eb17d89748da43e43c3a3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
