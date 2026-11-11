cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3788"
  sha256 arm:   "a803a15cabd25dd69cf943a9843cf7d45b01b29a50d6f853b4510e4e88974c8b",
         intel: "8d43d15ea31479c47dd637894aefa96b6cf85318d45a358866fc155785b73bf4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
