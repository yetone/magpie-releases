cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1983"
  sha256 arm:   "2ab7d29722c92ff7c7558d2d532c6a25594059693eca3ed56163a0eaf780f3bb",
         intel: "a9435c2f6370a1d1b366d472399cdee70e25558ccbc0d1f6f368b3facf96da51"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
