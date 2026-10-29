cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2037"
  sha256 arm:   "9a5e33c249c39c142276258ebdc7b7cfed076a33f97ad7ceaa1f579dad173d16",
         intel: "5d2a850ba2c97fd9939020985528a15120b1bae946f469aab2b7c31d43eeec7f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
