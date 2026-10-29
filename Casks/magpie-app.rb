cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2099"
  sha256 arm:   "61b5da9df50e69d65e404f5c743722ee48e6a5b72b7bdf701c172413816c67a7",
         intel: "22a4abd905c1f8f5dc441ed805a0385884ba965a4a32d706f7b7140e628a2d08"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
