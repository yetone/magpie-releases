cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3028"
  sha256 arm:   "85ed1ac19ea4b10291b8266f9ab1dca2ab51f4a6a109e0ede4bfbfb909354057",
         intel: "502cadf89a179a0b216909798d2f2d949e210347af62b32d844200ef8cddc71a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
