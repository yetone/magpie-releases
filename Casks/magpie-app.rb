cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3550"
  sha256 arm:   "08af3e4863d9aa14de3464fa2b325ad769ec8f5ce781fcac7d2ee891b1bd4788",
         intel: "4e2ffd59ca438708686e0b6aee806d9c48e38790f333520396449dafffe9d384"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
