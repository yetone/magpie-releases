cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2301"
  sha256 arm:   "7eb7632ebf848cdcfadd1671ed89d80f9b42d850e9764018ba4b7bb0ffd9598e",
         intel: "b94fad71c02e7bffd346a50968ebdce53c907df82fc580ac3fe46132e24fb8ac"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
