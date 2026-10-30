cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2141"
  sha256 arm:   "9e2882d3a24d8bdebcc5674c0f58614f8fc6163fa728ecc0b11d80ef97bb9e38",
         intel: "a4b6a2626f248e2999be656e999566d7caa02a8c53c5d5acf27820cc4aafb460"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
