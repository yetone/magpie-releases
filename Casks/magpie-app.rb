cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3882"
  sha256 arm:   "797e518cc694806f77e4b3370ce61ca136cf73b3f1aa7d5cc063972157a27998",
         intel: "e78f4d091859620987491c5332da00c89388c3d3a2ec364a39131876c217572c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
