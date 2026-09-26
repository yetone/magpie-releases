cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.149"
  sha256 arm:   "7db62a98c36f5cb522a9039ee82c17d77aa551e0eb7e0a3ee7a4097a57943408",
         intel: "28f88b4ae38d6bd2b88ea5a057667e0ce8f5544053d91ec756add45e26937a30"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
