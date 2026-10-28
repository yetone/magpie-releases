cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1836"
  sha256 arm:   "c19d2f8adcc3e8a9175b911c7b244913dd8c47d5ed7ee33ab4855bc368f35738",
         intel: "f0a1d271324c337ecf81b99e415015d1efb2d8d9ad1e60574bd308d743d3c213"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
