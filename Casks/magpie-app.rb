cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3072"
  sha256 arm:   "55b4a6a954b27ef308abf6bdbed22347ce8c8f3d8a4a5b7c25e0d7bbab993a54",
         intel: "03d5a4f357f1092758572a6acd756cb7f5f1ea809c5809ea8dcbbd13117b1b61"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
