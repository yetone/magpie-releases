cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.915"
  sha256 arm:   "ffcd7f535a7017a4a233a3b46c50aca7ecd94d44c0285514cebbe909d35afb8a",
         intel: "dc787ca263617eac23a82d1bdb618d648a39e07801c7dbf1a3d837b8eec9415e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
