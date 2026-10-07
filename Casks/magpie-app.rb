cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1104"
  sha256 arm:   "9f0676859f4623adf182fc728695955cee1421ef4811e8e22d354654ada29583",
         intel: "24b6390f203d850119b1b04e39662abdfe9d28b146b364752a7ed7e5e2fd6c00"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
