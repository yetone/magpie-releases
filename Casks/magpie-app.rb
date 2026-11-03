cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2883"
  sha256 arm:   "197b8748d4ff0424a5db8c39892c58c8452c0cf56d8a699c5c9908eb92182ab6",
         intel: "cebbc9d704e1cac409c032c2aa0bdae448fc918d86ba606017ed5f165001c94e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
