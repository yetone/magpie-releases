cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5034"
  sha256 arm:   "3f335ca5e8d141eabf0a55bc51f15d9ab47d8bc4c71e06f2e370822ec72534dc",
         intel: "4bff540a1096f96baf2670e8a98592de0de609bdddb3bd406abba8c880ff8717"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
