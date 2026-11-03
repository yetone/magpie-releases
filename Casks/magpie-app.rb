cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2795"
  sha256 arm:   "7c8eedf49dbc352800f3e300347c670f68683d7c9ead7ce3521a511fbdc7f07e",
         intel: "3860670a2ab3738b85400047c42c892297f0709b0a5295d2c95289fb965c0391"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
