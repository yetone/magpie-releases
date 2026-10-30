cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2178"
  sha256 arm:   "d9c199e0acb7774ddeb6d4e307e8bf40da59f2cf27ef6fcb9677c7258729ae8f",
         intel: "fd88a12fffdf914940b4bd18d8f988bbaf7e1a017d214da4481cf32b8a1fd2f4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
