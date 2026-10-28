cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1834"
  sha256 arm:   "796575783f6c8bce040620b7c20e8996ad919e3ab73dcddb32e3a481c38cd47f",
         intel: "d00d00de4a4bb1367c50230cb7f9a15358ffed8a664b7955ea11e039baf4d783"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
