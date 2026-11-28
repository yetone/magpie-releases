cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5054"
  sha256 arm:   "61827d4b7feddd4ca4322d97ac65587ddab0313f6bc19ae5737245061cdf9e11",
         intel: "f5979714bd9e388151cd2621d322f186561f94dea6c086f591be853ed27fe56b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
