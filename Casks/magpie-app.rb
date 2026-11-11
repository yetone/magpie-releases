cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3674"
  sha256 arm:   "696fce743b2a41ca9af8b20939214e783fc2e52cafa3cf4479b48d90ad977c92",
         intel: "1ac1c000cca695fa13d0e669d17c5ed0f662e3fd53942ef1f14cf168b7d5fce2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
