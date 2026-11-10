cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3615"
  sha256 arm:   "aacd3a74f2f08f2843b759b646c80c132e89107087adabdefd288a6de4a97056",
         intel: "733789d7350da4f1f9730337af2e39e6b5f612948790fc7cb33a27282ab17a6b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
