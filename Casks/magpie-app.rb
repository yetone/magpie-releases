cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2741"
  sha256 arm:   "ca23566e308e49fca8a3a7d3bfcf0bece245860944c4269786e5fdf2da4f3d12",
         intel: "84143cec7b34e846a3a308495b7f7dc015807e65c905b46d1c93ef4cef62ab2e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
