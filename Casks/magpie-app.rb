cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4479"
  sha256 arm:   "f7c9b3413dcfef51b7306d02d93cb779fdfa0c6616f210764dfee6ecbe93e43e",
         intel: "375de4ed7287f5c7c3b538565f3502d0bdb0a870fb94e87a1c45967d95f90a9b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
