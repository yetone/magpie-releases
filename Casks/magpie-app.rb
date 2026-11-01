cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2508"
  sha256 arm:   "6ce43ae42d3d64b87b067c03d5b5717ef5c8a03ca0daf153ae69af523323cbaa",
         intel: "a38c7b9a9a344831a3ab08dc8be2f50161366c0f0fc34b9d18fd113566974b53"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
