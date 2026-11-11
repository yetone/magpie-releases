cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3676"
  sha256 arm:   "ab7fc820fb33894252594d9e95f1aa71fc323af1cde1ecae26b8e3d7d13df0ee",
         intel: "db6ebb658c517ba4dd091da6803c40317c7d089a16e1db817542a06e8955b7a6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
