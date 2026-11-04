cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2993"
  sha256 arm:   "c1f2966f1ff504c9700eb0628859684040384c9ac1c29c4dcc07c7cf4e23f2a7",
         intel: "1189f8e9b1aaf96f0dbfe2c92ed2b4d875dc9381831f56a9b11cc42fd9926e7f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
