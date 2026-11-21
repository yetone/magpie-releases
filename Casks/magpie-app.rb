cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4648"
  sha256 arm:   "caace42e6f4533aa51ea913f3d4e270616f5002344c7a689f37004fdb5d21b86",
         intel: "def14614d4695b081ff4ce278a7572df75e482837e5aee11a4c1a40d97f60338"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
