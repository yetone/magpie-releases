cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1086"
  sha256 arm:   "caefc151b9e7d886205ed96f0ca523f0d72eb0b8eb8c1c29523501933310e2cd",
         intel: "a640a54e4096feda1645377c9e45423a9fa8e0b8a787f7001acda14f7311a414"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
