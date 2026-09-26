cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.145"
  sha256 arm:   "d72831ba6b6b1c50f8e70491b87ea8881697fde5a9a2ffff17f0dcab4e64a405",
         intel: "053072939776ffe7de28184b26ef8dfe17e6debf8624522c6dc9d7e73f92c308"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
