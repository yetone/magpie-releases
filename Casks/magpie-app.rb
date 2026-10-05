cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.996"
  sha256 arm:   "e71dc4c5fccca29db04fb7cfe6903945c6dfc3d8a9fc38843447bb5ec9c9956e",
         intel: "4387743f692d01041fd89b26e6dc8f940cd25bf5a0e8a8408f0af8520282b838"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
