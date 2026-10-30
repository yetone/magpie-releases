cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2205"
  sha256 arm:   "d11f6e705028ccc8e5e4d2b6327168d1930e73dce5113abdbeacf0ea6babddc8",
         intel: "52b4dc73f6e428d09b95a9624588dfc1dc5174e5ea7a1b6d0e58aa2caf7e9894"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
