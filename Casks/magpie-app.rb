cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3894"
  sha256 arm:   "03173a20b0f0658345bf8fcb3a25dcbe2320d53cf463deb94bd59d8a5ad46c86",
         intel: "6771d704355072cbe5324a0257a8b275317b402146694ac89cd5b0394cf1d04e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
