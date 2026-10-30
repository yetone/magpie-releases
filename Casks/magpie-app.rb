cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2172"
  sha256 arm:   "0e33774523f274cc1149564dc286105a62e8e1713da74b76f368096165a80468",
         intel: "fab711336dca549ed66e46d99ffaf9a2b9700d34f591d6b1f009160f3dd31df1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
