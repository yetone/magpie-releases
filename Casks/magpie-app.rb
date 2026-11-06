cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3207"
  sha256 arm:   "a816ef15d7016b01f5abf423e9f99eca50f75517c07540f7fed1abfb1dab6f54",
         intel: "3b57055a9c4a86e82102b2ed823abefe353bd57bd539bb484afa037185159226"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
