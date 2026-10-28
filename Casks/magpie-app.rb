cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1880"
  sha256 arm:   "5adb0f44cbbe4290cef201530a2bbd7251eb8256c0d03a92f05095b3d584133b",
         intel: "fb90c0001c4038beb8d0c045da30ab95ba85dbb9e11c7b1225196ea3df9b3a6a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
