cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4091"
  sha256 arm:   "bc32d2d3a84e98a07b8e79541547cf64ccdc7788871df7662d3ad4f9e1cd2257",
         intel: "ce9298c601710c83871c45bf2e1d7b7c53afc8b73c23b38638b1d89d8b435758"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
