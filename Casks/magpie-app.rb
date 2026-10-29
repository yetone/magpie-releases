cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2093"
  sha256 arm:   "8a2bd557651d719628354e150a959f2e1c7cf0bd79c2ac588237c97f6777e42b",
         intel: "1ba1b43a802ea532d7b8db952a24b170aa8000e1ddbc57f80fd71d21cd850fbc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
