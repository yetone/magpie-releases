cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3365"
  sha256 arm:   "dc497607800fb17dd658a94f6dad8b5e6f3e3f3c9e29b25d704f83e99ff233b7",
         intel: "e35d0848b95747a04559a6b6f7abfcbc67f4fb68fe585cfc05e0cc1483189c9a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
