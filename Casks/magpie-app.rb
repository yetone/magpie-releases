cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2209"
  sha256 arm:   "5d41a9ec7e788902e6068e1903bda6fefe4651cd798ae6e31347d1927c84c98f",
         intel: "f0abf5173442f86230f5ab302fb909cc6f38ca0a53bf1f9cf8ea1d747e73b2ac"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
