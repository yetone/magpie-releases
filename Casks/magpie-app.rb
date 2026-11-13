cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4053"
  sha256 arm:   "679ccc4ba4ca050baf49e86e10e5684ad88caac2eff7ff4ceee66d2d8a1d94fe",
         intel: "74a3242cb0ceddf511e0b510394423ae81ff9d657f4ebed1e9da4ea45dc8cabf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
