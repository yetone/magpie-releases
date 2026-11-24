cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4743"
  sha256 arm:   "41597ff3e774ef75e9dd4186461175639ad4b49337dd9b63c937f0129224ac57",
         intel: "d6dde4814fe51f48aba32e72ad722149e9723bf56da0a202a3dffaba9b31ef7d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
