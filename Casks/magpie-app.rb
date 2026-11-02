cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2665"
  sha256 arm:   "4e7229fd0c35717f2c53499ccea6b9f0f34330212b6b4c626e95936d0a9075f0",
         intel: "c463fba474eb04a5acdbc74001cdcf881f5a1ecf1f9c40d392f3ea29f34e2421"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
