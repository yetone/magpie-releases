cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4463"
  sha256 arm:   "3319503143ab34cf4646eb97492c57a8f7dd94b0434d1f01a636cbcc5ff4bc2b",
         intel: "e979c6e0a22a69709ebf0cf24a3cbc9605988c947c125562dbc7ba6b7e5149ee"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
