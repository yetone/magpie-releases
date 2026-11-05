cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3018"
  sha256 arm:   "91807af10265b08727e98c2591f488f818eab3dff83b9e63230cd0f735a6a30b",
         intel: "397117ab4b2661791128b246fb0a6595854bfdeb0e5bb45b55c352d8dc31e202"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
