cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1919"
  sha256 arm:   "8a29dde636c717fef99785154bc84d896405ca7498dbc960f33b4aee1f2add62",
         intel: "f5db272baeed4456563db733f8283cbdcad6424ee35b1a361c469d6caaa02275"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
