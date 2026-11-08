cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3307"
  sha256 arm:   "92c4c6683833a5bd3fb178f7c5c79dcac86a45f2036ffc5145eb7286b84dd585",
         intel: "e1f1a3c58d0187f9f7e816f83af5d8f1c002d9897e1e1272d8139416ecf86435"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
