cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3044"
  sha256 arm:   "4d1e85f1db48d8db5ddd79e4165a8e5d9ad3fd4fcffcc452341613051fb8338a",
         intel: "42027521ae0c8834e0b6f657baa320f38c896b907f3c48a2618ce4710dc818b0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
