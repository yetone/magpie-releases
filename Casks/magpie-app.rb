cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3960"
  sha256 arm:   "1c8a28b45b6062056941ddb3c5308761a6ac0f9863626c217c8fd91a9314be7e",
         intel: "0dc0f7e96d8ad970aeb14b81565aacc8454c9f58974dd0ecc98a77d99f222997"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
