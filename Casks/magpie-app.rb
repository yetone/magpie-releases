cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3303"
  sha256 arm:   "a71412b3a999927394165ef2837e52f93d370e4f8d7fbca060fd47a003b10f65",
         intel: "d3d4c09843fe9323d2d179f644cf1f85ec8768e4c470ddc7cf409a0e5f61a853"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
