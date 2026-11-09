cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3462"
  sha256 arm:   "ff9caf81ce5ec64c4887e9ec8420ae2b662998ffcee79a8a4722cd9845c9b0bc",
         intel: "0a90debe6bee8039a5b3c716a403f2a5ffbe1dad559323d92ca04ef730eceed7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
