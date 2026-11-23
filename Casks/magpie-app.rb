cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4718"
  sha256 arm:   "a4f01d0bfd4398391b4accb150e651a132315fe08468f3f88c737c65ab6ee5dc",
         intel: "6ca0be91171892d658bd42c183e0f38e9089b1b95dd87f5d1b339395951c1dfa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
