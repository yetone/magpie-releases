cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3232"
  sha256 arm:   "f99584a1875181722ec096c318b01acd7bb68ad5bf6ebcfabf525e7bc2653fbf",
         intel: "e08503411612ab359d11159c2e57ef21a2b4173aa5c2eec3517854a106539358"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
