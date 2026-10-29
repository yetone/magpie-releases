cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2080"
  sha256 arm:   "d651e0d509e095b7b74a4db87117fe9b4942dae7069cd633f56bbe84bdc2ba2b",
         intel: "cea7e3618f269e09e6924cbbc377088c345ca37cbc72da0f46807e15641f8471"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
