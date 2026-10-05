cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1069"
  sha256 arm:   "6bb8c1c71dfa7c7a013a99175865e4ac2b8b623e521b77a775ca0fcf497d6255",
         intel: "bba300079d5e7ca04edef0717fa2799ecb141b187a8f1db6b36f637c89b0df5b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
