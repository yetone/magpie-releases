cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2712"
  sha256 arm:   "1abe1acbdcfc686f3c6fbb4830786429f772812bba0cc5eac74dd38e05673314",
         intel: "384439d4d4dfe16a820b2fbcb263cd9ad70e5341099dd8aea6ce7d19e9abc3fd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
