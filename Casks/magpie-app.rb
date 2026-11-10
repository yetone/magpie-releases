cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3655"
  sha256 arm:   "13c8ce633e54e700fcbc4a298f0d024b93a39d2215cef584a015b08d70459967",
         intel: "5b61eea8fdff02dc0eac5d25f5a484083076b333587f7b6d5df5d0042e35f0c9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
