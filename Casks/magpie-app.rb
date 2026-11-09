cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3355"
  sha256 arm:   "6fb55c5ce8ff830c382e9e82140cde3483ba4b03a66e82352f9e9576d8ad6d70",
         intel: "60e01ed02c6d96e64448660bb0cf76df17bd495e3ff8de3af800bac34587f8f4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
