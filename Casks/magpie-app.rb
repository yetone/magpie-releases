cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1835"
  sha256 arm:   "60f73909e9726423feb9aea77f8cbb0a12e0dbb1d7bbc0c54f4d4c0b8713ee87",
         intel: "8b39ebb542704403f83db659a593961806b3957b8ea246ef6b0727ceb22a036a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
