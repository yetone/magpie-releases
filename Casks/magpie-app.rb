cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2514"
  sha256 arm:   "716c61c2df6da4d5d91e350994657c01b764d6cda5e9689fac390f37796fc39a",
         intel: "72df3ed22b1258d5a90005a52a902838d4c23d1f1f66eafc18d2c543d62b3594"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
