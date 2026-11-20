cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4575"
  sha256 arm:   "1f201c145ee114347029a5dbef328cada079a4e5a0617ab0dff58bcca66e2f07",
         intel: "e8ce7050a2ed4d59ecb5c50edefda9a07ea34a4cda0f2416793b23c8ae8cea1c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
