cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4183"
  sha256 arm:   "8183c408b5ce4ef87ff15b599f5ee5ef8cd2ded4aa06f50ac58d6adf418c7c7f",
         intel: "051cf3f968d2bf7f0d42789915ad9ec62bc3123fb52fb62906e0a427b4c0c54c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
