cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2604"
  sha256 arm:   "4a9bc59cb1e1bf1bd6e363d29b06d856552d9cca68344ab5f57f0e13c625be38",
         intel: "05b607a4db131acbee3152fc51b52ee1c03909717cc2557b48130ab33f48f80b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
