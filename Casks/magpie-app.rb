cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3322"
  sha256 arm:   "c998c109a482a6f8ece779711502e0f545e5a99371f75927496a17fcf2c81102",
         intel: "37f9cc11e7a7d3fe0c062f03c4aa337755b38045a451c044fbf32ea24938a6a3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
