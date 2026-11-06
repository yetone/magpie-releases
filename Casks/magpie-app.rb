cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3188"
  sha256 arm:   "48518bb37e9882c3be0825e4cbc6848e53c6b7b7fded7e427a1e960c09d81ef7",
         intel: "19559888f343818cbf5cf56ee41b630572b60a56b5ed27b581b5c431be1ecc1d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
