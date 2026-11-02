cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2681"
  sha256 arm:   "530ca2960b25c2d9c00ad713064224b7c7a9879ecd0d79f926287b7a2ce1749c",
         intel: "6336ba2ff27136ac50426081114e8681ece87fb0ee81a03c5b8a2c709d90af4e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
