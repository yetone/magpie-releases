cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2068"
  sha256 arm:   "322feef377643217190c7d4a19303af9789e1304f6fb63058c64246749ae6923",
         intel: "1056a43fdf5a640e7d79c16f1cd02fb950c47b06b6779b41b7343fd6924f1583"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
