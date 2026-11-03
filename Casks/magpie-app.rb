cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2873"
  sha256 arm:   "2adc90e41a84d907f2c9bbafe435b882edfc0be990b9eb7b4f96db1590fb8065",
         intel: "9f22020c6dfb807e81c5ea9c88a1cc7ee0c7013918d69aa867a5e00caeb1ab1a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
