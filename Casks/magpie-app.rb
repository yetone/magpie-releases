cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4139"
  sha256 arm:   "7ea31515e006728d6e9e2d06bc584a75ac6584fbcdd415fab8f7058ba365e929",
         intel: "dea04b7c997771602b873531cb597991c7e48225f9d0781bd9e582235f374255"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
