cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2608"
  sha256 arm:   "85bcfd3d7d813a47b954129f575af49cf6446be5cace6d294b998477619d7ced",
         intel: "5c076e9c7512045579ee93652f086adeaa091baf00784c8114917cebd310f7c4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
