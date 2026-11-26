cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4875"
  sha256 arm:   "212bfee1d7fc3660a15b2a28cf32e9804c2e3b55abbabe1f192867a6c4b77042",
         intel: "81daf00f5f3c488958f5d2b3f6491740cdcf7c81f5164c7500df510a48a26050"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
