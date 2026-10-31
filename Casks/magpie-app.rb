cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2332"
  sha256 arm:   "372cb6f7f66c5f6851df2c68d8f66b6498033e266853e070ff97398be643244d",
         intel: "40541d8aefab6396ee5db042ea85168854a35699178f905eab246bd645a3242a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
