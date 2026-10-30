cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2242"
  sha256 arm:   "0dedbda5c801495fc6647ee6ad96103524e8046062375f73d8f7ea57239012fb",
         intel: "7b82143e1c6c80e69d0ea907714789bf98d84f2ef5d38e3ea368f0381a5c58b9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
