cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.84"
  sha256 arm:   "6d33c4f961da7973c42add9b5516492567bdad8300c0aa27f3ad7bb12412c32c",
         intel: "599251e394f8539f92a02126e87d38337973711340a98d3684f58d8591881bd4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  depends_on :macos

  app "magpie.app"

  zap trash: "~/.config/magpie"
end
