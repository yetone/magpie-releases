cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2355"
  sha256 arm:   "5cfaa20088ddf170c0d0e5484cdc63da22487d23d81c6c26835ef7a21f7c5447",
         intel: "d0474b4287439ce2a8725a167791c2214a8dfecf21a9c9cb1f8b13245ad2d2ea"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
