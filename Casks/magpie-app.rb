cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3839"
  sha256 arm:   "32fb1aab54e63d37180cd67fc396ecc5aab06a2081f85342666a80f9a678a0ea",
         intel: "9800a2d2d834455e2fe4b7a53b58c3edb91632e4d4f706894f1bc626d39e0813"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
