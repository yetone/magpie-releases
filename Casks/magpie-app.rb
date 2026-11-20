cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4614"
  sha256 arm:   "2a7dd08ff846a4ef4a90c1a03523f445ef3789d70f238bfdd7b3e7abaefa8503",
         intel: "7b8fb91c0df32531cf6371e378dfd7310d7a6e3c61b39b1610b823741c979f63"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
