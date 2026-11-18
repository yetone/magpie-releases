cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4469"
  sha256 arm:   "3b6f8d1f636a8a38a5391caf7a34e878dabc803c631b1b34014649af82f668de",
         intel: "e494cfdf84a9b4c591e76cc6682e34f52eee272053af08020462d2000e7ddffe"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
