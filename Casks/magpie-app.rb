cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3110"
  sha256 arm:   "7fbbbf93518fbf755e30f80ea2bd7fe625650c3f20209da6724c7ecc0b9b421e",
         intel: "b490c4f1857785accea793594ebb0cff5dcab9ae7c246b9062cd12f26f8a1ee5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
