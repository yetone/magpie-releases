cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2437"
  sha256 arm:   "c34cadc624b814d912f0a51aba05240d098089b53c82c31e23b2427360963fa5",
         intel: "e4ab0469e90b2bce0a32e0cd0e83c5434499f29e6e49a49d990413efbd8fd493"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
