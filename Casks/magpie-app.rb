cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2288"
  sha256 arm:   "7971607a6cbc8e8a4eaadddb5df468ad9caf41a289a551af787a1d832902a52f",
         intel: "5687d1c4f8c8b453921a8602ef63dad7e943c237efe9a7fbad7783d4c7c1b643"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
