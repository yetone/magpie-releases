cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2520"
  sha256 arm:   "d5592ff639ca26c7d5361e0e1abe643658fe67f72ed8c0afdde9c7d02e229eea",
         intel: "3dadda801c00aae51aeac7c97f118a50b23537eb2d89e2b54e5fb7838bdf74e1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
