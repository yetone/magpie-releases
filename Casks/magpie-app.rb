cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2904"
  sha256 arm:   "9a60b2d6e4ee801bb55a2b29539e8a228a19bfb086da7318ca62054bb5e456da",
         intel: "b7574c073fcd0c0a47276f661b8dbe0d6ae1b77cd424c870520a55821bbdb7e9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
