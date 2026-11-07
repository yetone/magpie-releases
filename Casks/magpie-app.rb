cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3248"
  sha256 arm:   "4b23d2561a2a04acb3de76a3baed44765ee094f74e24ce3fe896dd0124d05993",
         intel: "15764f5418ba26fd3d059b655d7fd2fa32e307ea6d5ff039ff7176ea1c35fe35"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
