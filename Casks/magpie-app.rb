cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3077"
  sha256 arm:   "06fabd89e0de6d6f73075515a4d66e9dcd41e7cd344cae1eeb08f78bb9356219",
         intel: "9df5dcc3d642be8c70024422045ff828f1eb75f79d67bd587fad9a021e1f16e0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
