cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4499"
  sha256 arm:   "20b688f66d0f6d2c008b51d66f363dcc6f54275d462685670a791deb1aa6ba14",
         intel: "41c1fe808b46fcfb5ba1328c7e41f786fa1d5cbd4dc6c56144a816e945ea884d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
