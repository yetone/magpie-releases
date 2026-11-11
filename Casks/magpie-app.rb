cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3717"
  sha256 arm:   "5fa5bbf8258677709b5bf2f9cd65fc07ec8d8e7c0a0a541b4609ab1db6c84915",
         intel: "44992ccb63fcad2167dd4e84236e04c5c3d9ceb38c09bc3d91cca696a385c4a4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
