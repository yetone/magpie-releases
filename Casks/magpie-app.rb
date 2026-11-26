cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4827"
  sha256 arm:   "d43bdae8ad051b4c8fddbaddc808c8816221c42ccc55a6dbb618707bb7869abf",
         intel: "cf7d000dffebab58b8c766609592f32af528c52bee80d368f64899c5fb4fe074"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
