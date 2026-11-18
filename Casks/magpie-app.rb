cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4478"
  sha256 arm:   "a21bfe0bdcb5c82331f895edd329244c6ed6d0ef2b4959c1591843dc29d0889d",
         intel: "919289f87a6f80433a3144789744cbc3973eeb55ae2b00499fc1042fdffd4286"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
