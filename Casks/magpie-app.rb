cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3444"
  sha256 arm:   "7be6d297d18f86f521b45531b3c828316ce4f3bfca32476db8013741f73a310b",
         intel: "ad8ec5da8b193b28919b32907db6edc024a86b2b482368b76e88533c8c43dd6a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
