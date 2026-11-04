cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2921"
  sha256 arm:   "bc98ea1aea7b829678f13e0eeb0a9b98dfda1c60178023797ae889e15f6bae99",
         intel: "48baa6eb13eabdcb62bfc79922265732292d5bc5218565198f8e75662f14362b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
