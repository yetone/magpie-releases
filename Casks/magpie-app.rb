cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3197"
  sha256 arm:   "763b3789f10dd0b22ae96a9e051d6f65279c74e527540603a118542f5426d3b3",
         intel: "486a9211ddc782e728d229694501fc7bacc475a723836ae1db3529ab06999812"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
