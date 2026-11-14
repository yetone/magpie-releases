cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4172"
  sha256 arm:   "a2e76db94b9cd93d5b5dae72996b58e52e8d83644709c6c0fbf7d9fb1c4d2acd",
         intel: "50d0ebc76a090c380f1ed26b8a3eb7a6301f53b3d483a1839f99a1805b86b2a6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
