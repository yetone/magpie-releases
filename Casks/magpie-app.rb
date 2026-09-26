cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.142"
  sha256 arm:   "3a2935832d3141c057173cdbd711ae54105e43e0f53674b4bae9cde299e3dc4e",
         intel: "8073b2093b4c5d7c304dba34bb8d8fb0444908a265ea2346a0a89ad23d83df39"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
