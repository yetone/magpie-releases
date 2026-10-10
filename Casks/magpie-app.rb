cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1168"
  sha256 arm:   "8003bee29b92d9751176b3cb07a299f5399363e99f196f00322ec5b4d9a73218",
         intel: "3c5d721be5bb90e95d0c16081d026e78d60c995389efa095affbbd4dfa8f7416"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
