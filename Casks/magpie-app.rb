cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3646"
  sha256 arm:   "4ddb73accba52c0be8d59a02775ce4de173ed6645e653837d4f640da888ba69d",
         intel: "11c470ef4b4da3e316ebec97ef0e2d5a3f5e02f2a6e0a722a21eeaf55ea6da33"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
