cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2101"
  sha256 arm:   "cf396df5e617def447dbb589f8417e3e638391e945eff5ed2d7f8748fa765d1b",
         intel: "ca0f099ad308f9a07b270338f3b8f220178be3d51c6d0d707fc1b27e8824ef84"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
