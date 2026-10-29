cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2039"
  sha256 arm:   "3c21d1d7907d5f064dc2f25f1b71148e9d47282ffbaa3dc45a30f5748c786849",
         intel: "a2ce6623f8db7635ef9336f61943b6aab8dac518558f1129a4d98703edfce403"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
