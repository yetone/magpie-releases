cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1869"
  sha256 arm:   "6b19efbdb2be25fd2961f95c6533ff42b21dbfbf7c0b43a79c3d32d368c8a2a9",
         intel: "90c2e5d5617d39fcd29b9b27cac74c11b6d53a0c8419259d254ebddac10df8da"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
