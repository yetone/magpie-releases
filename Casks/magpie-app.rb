cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4382"
  sha256 arm:   "faae133f1d49b29c9849773405dafbfbbead18a5c218cea78a1a2e85a378c9c7",
         intel: "286b2d6471e9df92c34a674482f428d10222672378b14eddb3abd9af6fdab55a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
