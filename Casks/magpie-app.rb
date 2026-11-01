cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2584"
  sha256 arm:   "0231929fcc30e29f95ca47bde4ebcbd2fc25253aa17be5aa7d29e52d3a647e9b",
         intel: "66538eb43f9d6402251c0541db0d4d9b7d309e568b633b7ce357eda988ac71a0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
