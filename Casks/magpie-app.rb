cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1926"
  sha256 arm:   "7d5669bb9c63b5acaaca5c1073d1cdeb25cee69c3e70e890c0879dc95483e84f",
         intel: "2d49d7851f562592588c213a28b8819e53d9593152874bd1369a9beb12bb3649"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
