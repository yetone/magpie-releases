cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3212"
  sha256 arm:   "1693fffbe4458f27143d64eff1ebad9eba06aa46a5acefb04045d9ec345528bc",
         intel: "25c698179fdaa11a2ff9e8f9b1be71c7b1197c76c0683c47afc1b2099c6be596"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
