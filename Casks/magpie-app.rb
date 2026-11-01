cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2535"
  sha256 arm:   "936f0077c032b54b731e1b173209b26a70f3c7d6dd6823221d0852a3fb5cd04f",
         intel: "06ef39b86a3305e972d74da74160527fa57dd1df700393d6c8155dd8c2363233"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
