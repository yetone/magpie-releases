cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3644"
  sha256 arm:   "33551c8b0b99fe2a1fc04fa62b513d535cfa4925fbfe397ea34d93a17266c403",
         intel: "a4996032023355064dda77313a48eab21756fa5fda36a87309ca4b9ae56bfcb3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
