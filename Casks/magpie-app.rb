cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4195"
  sha256 arm:   "1e0adf6bae1b78878a56df1ccccfc3caa6bb49ff713fe3166f9b29f661321c79",
         intel: "cb42bb73b4ea82fd9019355f487e601d75d9ee028871e619d2c13ca194524210"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
