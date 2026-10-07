cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1103"
  sha256 arm:   "fd6a670dcec8fd9ca0e523be2230ab1d1df9a66b2baf6581b0491c209fd90470",
         intel: "22fb6454d17a6692975eb283d63be8b123cc8fff5968353037c72ef404537a64"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
