cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4928"
  sha256 arm:   "17341733e4c0baee764bda0d71180980912a7e007a1e9fdbd9f519f53601b07a",
         intel: "3457675bb3c383e89ba62d5eee8e48c318b77202a07d031c496d3cb42e4dd601"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
