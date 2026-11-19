cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4546"
  sha256 arm:   "aa3bcf3c2275975d059e76b364d83853a35ffcce4b4cbf747632c49be9600318",
         intel: "a2da9620b9673e40dec839da70ad7b2a6da14582e0bb7aea40cfb51376f3530d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
