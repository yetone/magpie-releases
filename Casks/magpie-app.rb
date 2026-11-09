cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3474"
  sha256 arm:   "6d2a5c684217231ce20176a7d6f16fc3261455b2964ef9e7679a6208d8ae0956",
         intel: "878de19a393d9da1bc841fd146ab13e53c9a0691e0c19c23722c6df0b7f868ba"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
