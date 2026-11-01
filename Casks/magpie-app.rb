cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2533"
  sha256 arm:   "3cdb2e95edac2e00dc0199c9f9e7dd1365c9ddf27d2ba5fa2f5ebea47eb857ba",
         intel: "0507793d4b805151dcc42fed0ae77eca378883452005419adfaf62bac37e233c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
