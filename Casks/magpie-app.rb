cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4001"
  sha256 arm:   "66448b2b46aefa677cea098ceac37d74d7288ac07c363e1119242961f3b814b3",
         intel: "a693cb90c7c42c8f8135c0f3ec25ece68d97e9d3954d097bd1ea28f2565cd9aa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
