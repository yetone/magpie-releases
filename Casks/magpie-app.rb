cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2804"
  sha256 arm:   "55ec4d1790f5c2ed6d890877572dac1bff79076a641df3bce3687b31839d629c",
         intel: "e031fa1e98f712802dfe381e9c0ef21e5e69bfca06056eecd56fc4157a85d3e6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
