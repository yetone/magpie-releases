cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4255"
  sha256 arm:   "b2a4fce683da416409cd4a6086c5444f73eacf7aa4d4c00f17bb330134158e04",
         intel: "9c08de4c382de94ae3001a398d6c1fbe0a1bf653429fd099a0a2e1b4b472de84"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
