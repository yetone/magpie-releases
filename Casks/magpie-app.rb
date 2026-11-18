cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4465"
  sha256 arm:   "2b58acc02ebe48bc8783cae1ff51fcbdd0977a83db12ec889bc8d8aa2b9dbdc0",
         intel: "336e877c3d4119976d6369488414d438e815569d8991a7593064b8f3ad77925b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
