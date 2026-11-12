cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3833"
  sha256 arm:   "74ab45f845ba015dbad9c12232b954463051838f2c732f1a773bd0eeaccb7654",
         intel: "cbb09641b1d067b32873fbaca8aeddbb40256fe503474f121b253268475cf3e8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
