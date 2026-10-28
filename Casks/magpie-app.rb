cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1972"
  sha256 arm:   "2af2df9d9aa8e853758c129f8ad63a9bbc0721fd2b1457bca307cb9323a0d719",
         intel: "436c4d2a3cbe4b6a5705cfae16be391c8fe346ea33fede75c6785b07baa83be5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
