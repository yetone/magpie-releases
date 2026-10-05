cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.959"
  sha256 arm:   "5286d1740f0e023b39857b0e35e1d6aed4f9a9eb4838e289e4541aef000e2ab5",
         intel: "63fe8d149580fe554c135dc7294c135ffb3ed734e4cd3b42b154400a1929454a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
