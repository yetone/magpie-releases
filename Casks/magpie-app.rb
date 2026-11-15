cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4234"
  sha256 arm:   "02c5bfb0bfe8df948537abfa812641152d8a840a07ac9332b81382c39a962cae",
         intel: "2f55572ab19032d83da787b820bde8ca85f11d0c5f020ba73b020a0b0673661e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
