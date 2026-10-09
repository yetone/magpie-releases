cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1143"
  sha256 arm:   "b3b7c077c1d5bfe5ac4573837670fcbeac2ba4ec4d68b67e6adbf931ce863c88",
         intel: "74217ec54793429d292a0c109abddec90e54fb07975bc2fe3767709cc3371089"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
