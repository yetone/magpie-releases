cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4116"
  sha256 arm:   "85fc2e359ca26dc266ba1195949084ef11e6b27e30559ec4c8366f4b628e50cf",
         intel: "ad905b6df0a7be32a5962212a2554eaa2e0a94dae53dd0e1accbe023c94ac3c7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
