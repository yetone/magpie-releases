cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2056"
  sha256 arm:   "1722348f8ff0da2dd1350aa764ab056dc436327afc6330d4c0233c511f35b3fb",
         intel: "e859ea4a8bdd988172563b9cbf7f851fd087bf6f151aaf71952b02a07ab14742"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
