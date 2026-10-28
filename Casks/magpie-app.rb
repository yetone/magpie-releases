cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1960"
  sha256 arm:   "e1beb49e822806712c7e22e8510d09192f635a4ddbcdaf639b04a05862866037",
         intel: "90968e0881931978e04f00f8f683bbfec23133ed74331c74d50d209deb70bb7e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
