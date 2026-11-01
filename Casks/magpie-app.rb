cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2580"
  sha256 arm:   "0270ced832d4ae265ba9402162c52fa18a6c9c6362ae855f00ffaf4fc652e37b",
         intel: "844f80ca8359436f050ce351cb5f6f152307dce38b5f32f7847039707f3e8f0b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
