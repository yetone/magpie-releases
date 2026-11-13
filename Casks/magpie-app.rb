cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4064"
  sha256 arm:   "966e3e8d97ca8b20d7d317f13b704477708e02b2ab5210366e8df36f64f62e2b",
         intel: "3c2e9dc3ce826e99e8d0ac0c42a4ff06bd15a1a0b8b347e49e700c78f776a3e6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
