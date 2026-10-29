cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2048"
  sha256 arm:   "4fb7c02676041ec4af698363a2dd85e99cb37955a4642d933f0531b85a7c8e02",
         intel: "b99c7943012534fe4d4d5151c96c1a0b370255cda2770d71e4c3eb9ccfb83e04"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
