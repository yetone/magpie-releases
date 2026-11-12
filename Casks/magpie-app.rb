cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3841"
  sha256 arm:   "b79ec350e2664c3df275f135d89bb51d30de5be9305fb06caf745f175c0fdd1e",
         intel: "0c1acd3fc21b47c39eb77d457397c062e9cceb9ee3b8606f3917c617b8e738ac"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
