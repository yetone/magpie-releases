cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4200"
  sha256 arm:   "ede0a6b67601d78fd5657baf45d19e84be73b1cde52a10a819a77fab0b972b0c",
         intel: "445ffc843d1492a1d5829e0fe424a47f90345a3e60a14cffca67fa1b3a289002"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
