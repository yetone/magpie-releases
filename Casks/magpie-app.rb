cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3461"
  sha256 arm:   "78458afd242a75625ead5ed3a61891082034107c2be12be47060c09b03786b69",
         intel: "c65fdc4ebcf1224bda311a419588dadacf448e5df4fbd33c48b4cb97da343063"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
