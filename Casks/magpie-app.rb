cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3298"
  sha256 arm:   "a6c785153d4e63eb7f757ee235794564ff714e3c9bdd3980358b988609af8f65",
         intel: "f87916ca8653104167cb8d3306446e4e3330f91e11ab690fe3041f87382f73db"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
