cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3333"
  sha256 arm:   "5a0ed33277577ea57175e7e6a7d1b2099fa0d06c051cdad1ba98a1ce853bfe54",
         intel: "5657916bcf87e3335009173579e21c94bef08ce68c83e8ca0a3b1033f60277d0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
