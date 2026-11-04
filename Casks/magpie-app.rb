cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2905"
  sha256 arm:   "14721460344a2e3ba98a2c9a7db72ab047914a302de74e8a9c1a10893da85899",
         intel: "2fe56afd1a6be884fb968e67b4d6fbf909e62c7774063caa5ec6ae91a1cf6723"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
