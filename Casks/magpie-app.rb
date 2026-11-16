cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4307"
  sha256 arm:   "9d36684c5c8bbc4bf3cbe5ba0c641dd46a62f0f8d8e4d5d858622473c4d59574",
         intel: "eb0c538d60220451bec93b2959780b5784f698563ec62193a9b14063597cd828"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
