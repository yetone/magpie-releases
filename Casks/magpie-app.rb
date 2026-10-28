cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1941"
  sha256 arm:   "3004dbbcd1abcf957860264cc3d9fb907a46263476fb0e56cc2b0c7a721da484",
         intel: "bcb8ac385126c120537a1db231dcd51b7307c77c9c055dcca9ae184b76a72bba"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
