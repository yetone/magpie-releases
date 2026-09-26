cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.144"
  sha256 arm:   "e5b876607c52623015bbd9cfe9c7ea248bc5f6b01656f18f9f96cf485ecba0c8",
         intel: "721239542822d0e265eb506a5e909974ccf43b450c97b21f8f957d5f08d86d94"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
