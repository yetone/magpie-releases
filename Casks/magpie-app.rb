cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4003"
  sha256 arm:   "76ea3f7b61274575f310adbdea8d14d8561ec569c4e0dc4fce78c051a293d50c",
         intel: "a793ecc68ced86ea015bde2ec42c944374551b45d3f6b1fda96f489efc81a5a7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
