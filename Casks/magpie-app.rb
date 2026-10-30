cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2127"
  sha256 arm:   "b810b5d7f40023ff147fa43eec4bb638508db598c0e6c247f3776bd5d1dc67d8",
         intel: "4a0a6283d4692cc92cbece535ff275463249ce04ddbf3885ef31e373080d3382"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
