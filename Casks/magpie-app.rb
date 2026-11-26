cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4835"
  sha256 arm:   "4573adf41858564c457ad3ed23c82f76d300f6c2d1645c536a4a9eebffe79c3c",
         intel: "3e3eabc0a101d1c0bb1f3ea8b993e105c9b6f9d4444ac604fbe149175e57b98a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
