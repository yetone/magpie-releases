cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2055"
  sha256 arm:   "037ea2ea6bab29348657a158be8e81ca3920d4ec6aaba8a14df3e060b0ba04b3",
         intel: "a8c7aff00a995156a0a3359ee67c3cfb5d69af341fcef2b0b2a17f5a4f51eb3d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
