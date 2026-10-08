cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1118"
  sha256 arm:   "ae9e7405f9f897cc0b34de50301eac198efb993a59257dab4553ca42b834b7f0",
         intel: "c3dc893137c284fc2160ba40521290b30f2958896143d7afba0bff0376995d5f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
