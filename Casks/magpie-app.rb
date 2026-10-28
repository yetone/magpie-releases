cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1902"
  sha256 arm:   "7969a4b5ca59367827d0adbb5f22a5c9911fe503fd415f75b429aeb48de6f0af",
         intel: "bff63a45e622ba32fe31f9d01349ce145fc66dde3ab44bc40402d16ba7a7ad95"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
