cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3367"
  sha256 arm:   "6f861118cfed3441af064d82c69477d863eeb82cb890a27add1dafa9b625c4c3",
         intel: "d791f592dcf58894257f0872575e0e4563c2fa78c844f230744d5fcbd695407f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
