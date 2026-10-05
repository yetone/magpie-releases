cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.995"
  sha256 arm:   "b0246ac37c55881ed6b16c84754040d3c75a1a5e44e7c2c0508fce5353dcfaef",
         intel: "740fe36de68fb94ef2f24ef197fbf03d08f2491ee856f505881565c50a89ee8d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
