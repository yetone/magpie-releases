cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2998"
  sha256 arm:   "9101b23dfec34a204fd79a11c1b10ef6ea360211332cca12847bfb6d2bca5bc1",
         intel: "1b14023363a6b9d4b9ab511ca6365caf1cde634c227b991690278a9c01bfe05b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
