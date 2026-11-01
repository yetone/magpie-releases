cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2545"
  sha256 arm:   "67a0bc7df3d9aba2219898cd756ec50e51d40efddf7fcb1b9e3a6d6746227b95",
         intel: "277b34d79713a4141827e17a75093166839e6414b577d04b49ea1322fbc2c998"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
