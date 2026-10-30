cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2152"
  sha256 arm:   "eb0b61a6ba59a79eadf849c0d6cf8384902ae455bdaff3bda1bc44086f07bb9e",
         intel: "c1d1e8761d9245cb467eaeda166c64dda4b3d5efc0a177931e8e6f9907233ce7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
