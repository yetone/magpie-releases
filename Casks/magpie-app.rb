cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4714"
  sha256 arm:   "9afb10b4a3073dabc27b0d462e3ea36618326a01f193bb35bfb7721423696c53",
         intel: "480eaa797bdc0022545940def731fbaa0ec88887144422b8794d25d8257d120a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
