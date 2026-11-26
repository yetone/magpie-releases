cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4845"
  sha256 arm:   "ff0d59acdf6d6dcc7d56bd537150d609340894aac310cfaaeb5396dba93c0319",
         intel: "189cfd1161ce4b3f2ae9f51a97832a0eaee7b1443186f5ee657e05a3010d400f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
