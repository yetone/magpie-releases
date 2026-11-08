cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3330"
  sha256 arm:   "cc14ce0d0a49e9e48b8aa3e697829c09c521c4dfafa1f59c823382990cbaacf0",
         intel: "9c5283fbd2121a38c2fcc0773361ec687dbf60632242e8e0202c7bec78185437"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
