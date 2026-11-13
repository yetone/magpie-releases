cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3961"
  sha256 arm:   "315f26ae251c91d6c86e351f0c90593aca7dc9bcaa38f7b176b10068790a71f0",
         intel: "7237b4cdbba1dd26a83da6364d7246c9fc29e53d83d547cd49d2256c6c0e2d5b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
