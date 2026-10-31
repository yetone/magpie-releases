cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2444"
  sha256 arm:   "30c64c00b32e9a7a69f7568dd8964a66bb53d2debf07115d115eb9de32bb9f95",
         intel: "88fa37c303ef4c16e6050f67c471d47531c74972017dbc1d8bd4150b06910519"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
