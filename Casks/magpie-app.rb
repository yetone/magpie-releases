cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2388"
  sha256 arm:   "234e34219d729a6f7f621c1e36ff2e6ae459d29c6cf8ada5e9b4f6fc2339ae89",
         intel: "31f432b07f292cb8639b814ae80971132e5c8df181e25da4739bf2b81bdaafe4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
