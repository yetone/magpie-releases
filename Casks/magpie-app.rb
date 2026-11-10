cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3532"
  sha256 arm:   "fe3eff5edb0c7fea55de31d6c8defc49abd8b2e84ca25d04200e2d711e4bcf47",
         intel: "90e70de8cb1cc10622090d84648b482b7a29029171586ce4e56fd3ccfd0e0b5f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
