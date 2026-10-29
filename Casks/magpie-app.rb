cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2047"
  sha256 arm:   "9bc4ffc697d121f1bce1369f6d883b027a4b7c1297938d4c0259445f008cb07e",
         intel: "5284a43e41fe6c2bd1713c9978176a2476d31fb1b1066b19f5412a0ece2d5a8a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
