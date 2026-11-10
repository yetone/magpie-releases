cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3630"
  sha256 arm:   "f7889cbff279bc93370ff27041251d76e17797c30af68c28006b50cd74b4b881",
         intel: "5eacd60e0fdca92c5957956f58affe6d2ef877d2cb236516e4105c99879d70b3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
