cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2806"
  sha256 arm:   "a86c0dbd66b89158036149a3f41d72757054010011f6e040b3a68aa26804ab91",
         intel: "1edcc1d4d72542af85e6abd75b4dd1bab719b5178de65f1f77ba45f1b1e85fbc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
