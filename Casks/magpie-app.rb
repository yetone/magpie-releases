cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2500"
  sha256 arm:   "a015686c7792c87782191b472437030a8f2fdb5188d3e40e61c5ed0a5a37d79b",
         intel: "db3f95933237918ce363824eb731cc9c0d2689c9cb5c86edb1d49af29ee2a835"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
