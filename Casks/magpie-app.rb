cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.938"
  sha256 arm:   "94c7918c910b5a5824699b3d7bb346d62906f915b6f06fda2a12ab7b625d606e",
         intel: "cb19cd83c4059c310aee05af2995db918f7d49d5de986970ee8b13a9192fcf60"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
