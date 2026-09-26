cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.134"
  sha256 arm:   "2c49e440255121b8db5f67c37f3bf4c7b229fd95d154bc7c7fde8a5d933f164a",
         intel: "87bd4fd949e43601d0be75cd70211dba4bfee25012008046a47c26c9116ff43f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
