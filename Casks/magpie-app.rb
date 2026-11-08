cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3334"
  sha256 arm:   "229d4f7ab502ed940997b1b8cf2f6a73243892da98182160dbfc015b9d75305c",
         intel: "4daf0a52ad06bde35f526fe2ed9a21819100d093b9a64d351d6125c6a96124f4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
