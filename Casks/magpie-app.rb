cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3943"
  sha256 arm:   "34ec001d80e83a1c7a30e6183e6e67efadf18494f5c2043646044d7a81a8d896",
         intel: "d2b9124458c9efe25796d270c14710fe19b2608b8a598c351ca9bf6b8767b714"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
