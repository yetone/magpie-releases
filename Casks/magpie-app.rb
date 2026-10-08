cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1123"
  sha256 arm:   "cd4992cc201d1b91cd73e0a5a0275003bfcb48efa6b797abd8ea135483de0cd2",
         intel: "de66d8e7c05fa2757b3f2602b13ddbc634c7c01fb87dd3d41465eedb29cb1a0a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
