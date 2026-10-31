cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2294"
  sha256 arm:   "c863e123d9ba0d3f28c14e5f6878761b7856892ae028fa105e3f7855ee2b0b79",
         intel: "2c13ddb9783973b53c280cde29667c5a68212e004e4db80218195d2bff1823ff"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
