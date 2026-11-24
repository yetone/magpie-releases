cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4750"
  sha256 arm:   "0d8b006c2b381f820b6c8d4fa452c1d8ca665ed3a8a4cfb744883dc3cb2040ac",
         intel: "120495e7b75e806b4682ef804ddcbcafe8d8fbf3b29f72a8101116c6f508e7bd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
