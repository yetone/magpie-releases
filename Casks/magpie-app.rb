cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1966"
  sha256 arm:   "06cccde41a07f2d823494ad2112e847e81a2d4aceee2ce11f1b8e69010e3c625",
         intel: "91bea9a3f78c8b132cc7cd18e90b6900fe54c5103c20e1c5cf3dc811d7475ce6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
