cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2799"
  sha256 arm:   "4f5e0dc54c71626e5972a4433e6e4c24084accc4ab4b88858d0423581835c5aa",
         intel: "bcede51195c091e0a25cedb921923aa7a66f3ff63ee352cc3aeaa3c586f3504b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
