cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3807"
  sha256 arm:   "a462dde2ea0a4d4024aa9471f6f130626cd92eb8a27ace3f3eb287cb9ec332db",
         intel: "b3d73251d1a9231f76a4f99fade53191bd5d0f3a19b76d00130b5f5dc83f9b97"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
