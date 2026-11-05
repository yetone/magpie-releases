cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3021"
  sha256 arm:   "fd4688fc7be9cdcf0f1aa4e4a3380c50c5e768c3920299081ad5d7013d79efe1",
         intel: "da6313bf9bd4077c69363982170998c099d589bb33af947afa0ca1a4be3ad51b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
