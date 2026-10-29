cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2006"
  sha256 arm:   "22484176bdf99f1bb2a960715d9c7bf3f89bc8a0b630a3edcb9add17bfe4c597",
         intel: "c9fb9ebe0a6d77df1d77ba0faa39b948a3c4079520a868a09377ab9202e1f6e6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
