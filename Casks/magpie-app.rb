cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4645"
  sha256 arm:   "faec1397a37bee00f5505b22325853af3300b8f381070fef45b25f3ab344516e",
         intel: "898cce4835d76c907e12e837dca31afc6628e39646c1c742d4ba3efb8cf45abc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
