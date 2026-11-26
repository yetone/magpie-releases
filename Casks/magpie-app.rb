cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4879"
  sha256 arm:   "6970a7ce85ffe9e7f55fe20f58cd4edeff72ccadcbc23943c90731eb59479f7d",
         intel: "b9470ecf679e86878a6cd662e2fc14378a8f19464f0d2c5cdd6844a34ee826ce"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
