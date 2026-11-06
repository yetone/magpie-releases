cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3179"
  sha256 arm:   "f2869b762a612a67bb0d81d82c6f3290922344630b224eafb9a1ea27e4ffdeb7",
         intel: "cc70e72850ef8ff8e62f58856e58a9dec1d91873dd5044737a575cd149522667"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
