cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2824"
  sha256 arm:   "bd50d02ad756d4fc1d88561505260b776eafbeab4858e713f0740f51c5b533d7",
         intel: "0f1518a753d13b452e9fdcb67edb92ef403cba8168d2c5d47d72ca9ad033819f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
