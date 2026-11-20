cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4612"
  sha256 arm:   "ae435c1fb52a41e16910b13c84ab53b949167d69f26f953e5bcdc3202d403163",
         intel: "abb14ad5e11e463960cc958132c6eb1de717e06fdc3fbdcae187fbb8b1dd31e2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
