cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2277"
  sha256 arm:   "54ff8cd95b5572f0b42cfb42cc5aeacb2d5341cfc0799d49f3fa5d4e8c9bbd8f",
         intel: "cf9aa56a1e3057bdb531db7f8b5d660e5a5f753c8d3178718fff001f81df5ef1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
