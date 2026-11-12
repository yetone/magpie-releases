cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3905"
  sha256 arm:   "cd9eb4b81b5fc8bbdddf6ebe95309dbe09d44aefe04f38427aa024ee73bb535d",
         intel: "c57654991b9f965a502b4c9d7a6e19786c67323cd5815fe36a7787c2dcb31d18"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
