cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3373"
  sha256 arm:   "a2a566e34eee8e4a8a1ea5cd7a21bb02512b4d30cdd1f99f91eaa75393901c01",
         intel: "de28033bc05fb4ffdb5c0ec62915417b4ae0f866314a94aa9881ed311d223cc4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
