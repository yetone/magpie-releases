cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3485"
  sha256 arm:   "aa912c339e488a4c59a27c7275d79affc14202e84383a1cb445561312de1814b",
         intel: "4730107052b7361a9fe53d7a837146f6d03d006c8d24791867fe10c5e37cac75"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
