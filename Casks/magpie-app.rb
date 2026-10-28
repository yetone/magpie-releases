cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1881"
  sha256 arm:   "3cbbb0996df1fe9cabf84ece71bdd1f6b7a181a81de664d34748ced975cc6956",
         intel: "1e6a5a2b84f7a6f039f170c780e3c0dbd45e209fb31076092c9c991acdc451ea"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
