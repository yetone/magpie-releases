cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3280"
  sha256 arm:   "557c4c6d3d044a6f5fd4cebb57ab8546b1dc5d96d42ed97ed0f7848d90b6c79c",
         intel: "003accf6ba043d84916bb049a7d9b2b8e062edd05f24201b1fb49f8da9dc4da7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
