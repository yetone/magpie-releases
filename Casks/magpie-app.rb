cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5042"
  sha256 arm:   "ea4a11e06fe494d7973b95201aaebacc5d04b9ec7ce099de8d6a5fc219dda362",
         intel: "d8fbbd891df9b1676ce811fb45d8107158bdb818da7e53710fe616fb21b8797d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
