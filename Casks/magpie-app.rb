cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4127"
  sha256 arm:   "f7abf9de30208fe1f4b2e45f33f737bf7d2d8f5607f3048749e5311ca910b30b",
         intel: "da1f04ca117e562a7624aac5187a50478b2838aabdd6fa04625f06c2d5144d23"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
