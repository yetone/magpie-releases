cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1063"
  sha256 arm:   "e766a25ce045445d71cbcb6dfab91d2f05b7465e59bfb4e55964a36dbdc24d8d",
         intel: "d67e7b590c56737fdf5dfd01ca07a35e8a0943d0196d7622a071898e4dd8b22c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
