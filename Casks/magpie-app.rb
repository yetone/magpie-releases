cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4217"
  sha256 arm:   "1d18a4e2625f8d34073e13dc855ac00cd9500d3827e2c716b518607d80806ffb",
         intel: "f75409920c802ffb694a06906328381bee9bba96d8a42cb1808028f4e8193990"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
