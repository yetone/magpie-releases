cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3046"
  sha256 arm:   "c0f89b63a9716a81075f0bc26a280627f8033d65aaf301335553cb1674849208",
         intel: "9896e0a4343bf93026fa1b8f05b661493f90e52ec01599f184bccab2554c388a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
