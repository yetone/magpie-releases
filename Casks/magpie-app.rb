cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4985"
  sha256 arm:   "50a35a5012f669330fc2d5d829c969bc836d4032fc07ddd7633efbc3ea13d468",
         intel: "7b3c18cbff0133a99883dad9805a6af7f4e0a107be454c85228750c81e05c9f7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
