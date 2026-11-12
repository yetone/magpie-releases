cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3862"
  sha256 arm:   "fe08a875cb2804baace2eba1685b033e653f7fdadbb65cc7f150d531a22bd1e9",
         intel: "75bebc4129b0372266e059773d8fed49b4dc32a5230d70d6e5ca0d98781ceca7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
