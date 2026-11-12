cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3832"
  sha256 arm:   "e56a35f08b15e416cff3ad6fa0ca1aa7f964f90b2008f684f42710eda2fd9ada",
         intel: "7ab9b6e2458ef8f9a2a544f609f1c594246ba95dbe06899fbf5bed340f432f26"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
