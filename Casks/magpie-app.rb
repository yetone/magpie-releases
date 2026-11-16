cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4331"
  sha256 arm:   "5c0626e91a45eacdb08426a7957c8eb85b7b2db2409f6844baf679bd6111b5fc",
         intel: "8508e1d1ed3c5e874389b4c17bcc837d9cec21967d8a89fbf3479e0f4e11892b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
