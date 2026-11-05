cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3040"
  sha256 arm:   "d91ba13168cd3aa6805a8a8428c3b6dcf1b11b904be986778c736386bc92d13c",
         intel: "11a4af59935496eae3ad11c2a5c5867b60f02c79a4f6279bd2e481351e70598c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
