cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3336"
  sha256 arm:   "3e1baa6376da893884053bd1b007fb1ef63b8e8998463f12d360f041bad07871",
         intel: "0cd321eb69b217919a37ad73e098034f862b9d2f6206adf942228fc0554e5847"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
