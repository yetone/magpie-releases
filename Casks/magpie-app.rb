cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3698"
  sha256 arm:   "46ebd89b3f40081cdbb6816b3e06512cf7fe1557518a6ff823b5127a045c4e48",
         intel: "e343a689dcbcc6b0dc67789650654548f0adcffe0103d097b0befc1fd2024c82"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
