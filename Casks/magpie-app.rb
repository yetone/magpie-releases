cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4310"
  sha256 arm:   "76ab4b6693ce9bb4bbbeb71e7b498c79ffa41e1be115d08ac82b5a5296e6552c",
         intel: "96d41fd0db967ba0fc3efd6f15be741d5e3e4e6569168b8600b8502ca7fb984d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
