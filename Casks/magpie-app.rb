cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2631"
  sha256 arm:   "c6694884e01f8ea7b18000652f786ce579a5c6c493c811f2d5a8dab082f3f7c4",
         intel: "d0d62fc5743e1e66853e28582b650da7106a93a54d7d83168c2f5fde046969ba"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
