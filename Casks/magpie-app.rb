cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3247"
  sha256 arm:   "62899d0b4dbc3e2dabbd84e468cb4acf3547296e73b0f719036006828247e80b",
         intel: "670656c6e7d9572571fea9afe90f62f1e03d1273cf05a06fa9e2718112278b9d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
