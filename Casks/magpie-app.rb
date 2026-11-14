cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4189"
  sha256 arm:   "c99b6e2b0b6698b638d0f98d1d8502e237dc1f727ae6f2db4d502d5550da318b",
         intel: "858301661555bbf1872a98aba6192f0b4f86cf9b0f8b6a6d9f2d8456b15b34b2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
