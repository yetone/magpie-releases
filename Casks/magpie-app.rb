cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3345"
  sha256 arm:   "677afacaf3a5ca6c5d7736fb4fb69c7408c4673298ba302680a7ae6e1c9d3ecf",
         intel: "9e630d8655af0689f279159cf29586cdb686f09f3be8bda615ba82c35a490eb3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
