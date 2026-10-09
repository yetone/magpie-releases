cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1144"
  sha256 arm:   "1ec8c1f613f38c1a8d7cc5ea8adb2037d0570007752baad2c1d6490b455f9d1c",
         intel: "f3f5eb04d44b8be846b0f00b13f3c6812ab72abefea003f9c117775302c04b05"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
