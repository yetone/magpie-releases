cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2352"
  sha256 arm:   "713b509223578dd8c35c81ca206b58caf74afb2f4a5e2c818949759face8c1be",
         intel: "892515967222f74da536779d5edb38fedc9c7b730149b04377576981a3c88956"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
