cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.975"
  sha256 arm:   "6ebd9a7b2d77161e34f66db2e7d73fdaec3b8c10ed7d8058a2158584fb0e48bd",
         intel: "336813a4f927428e8a855eed71fc56c931b2ecfa6edc366bcd1c992765e1654a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
