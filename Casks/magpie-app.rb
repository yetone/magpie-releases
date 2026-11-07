cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3283"
  sha256 arm:   "e9ba78785b5798ea1c02d1f33373ecf37bc0fe2720945b0d3b123be9c611ba88",
         intel: "d48268da1cea32c8c00491e550dd538a501c8b1e20a9adaa7e2d68d2d677d6b1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
