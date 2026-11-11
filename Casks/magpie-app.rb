cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3759"
  sha256 arm:   "a09820d31ebb89b5de28c949bfafe5a502335b79fac8be05ea54690bdde244b3",
         intel: "233ead6963c6badd06c1b03285ecea1d9c9b55fcb5c42c23f31b99116c17d890"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
