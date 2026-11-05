cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3006"
  sha256 arm:   "aafec84dd623cfd3c6344a652ac695d9af19ad9c58564bd6a523a4ed611b28c3",
         intel: "12ad6d56bed08dd68d459290bc83593f80368d95ee5d88e11b5c028c2512d1d0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
