cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4006"
  sha256 arm:   "662c0ae237c811c1946b47b1295d0c947eb8faeb8c3bb3fc568f4412ed98e295",
         intel: "69de55ef45736f2be06e97edc17352e351893f4c4d74d85d4496a6e72fa845fb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
