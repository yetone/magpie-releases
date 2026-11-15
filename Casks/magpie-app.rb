cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4267"
  sha256 arm:   "115961c8db505dd8fc797e8a84f542ef153849d56f96f98e81cefed73fb4d555",
         intel: "d482680e60e25519ebc9bcbfd623f34521793c1d7b6f0f1a1a807d60f4f41a44"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
