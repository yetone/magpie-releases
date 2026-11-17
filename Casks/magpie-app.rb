cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4350"
  sha256 arm:   "e9a8add0b7f2d07678ab22ac6e863079ad7996a5c4135df26652a92c5054fda9",
         intel: "489bc61df6259650c7fc307cb20e8dbf51d9f42103ea7d81ba2000ea216d2541"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
