cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.901"
  sha256 arm:   "ac3cf99df973d1bcea5379d875a12a04b30dd3357534a1cacb390f5ed34a025d",
         intel: "dd8338e3a160a52ed7f75b193cce1c52328929be5057bf2967aae5705eeb9d00"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
