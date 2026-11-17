cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4378"
  sha256 arm:   "117dd6d1e1dd5195d2b6c3e0fed7d73ba8346f485938ee07aadeb05cad2eec48",
         intel: "6f5e038e82a8e1871a7bcbaa9c10946b4e0369ec63d1b81ffaa8365030c4206f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
