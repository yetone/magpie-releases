cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3471"
  sha256 arm:   "6a6593eb2b03500a7c23de2712d35860f56641e43224b9354ef8b16096b486ab",
         intel: "49d8e5815ff5a50f11a139378ac609e8537f046dfff0c0fa294c535263d1e0ed"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
