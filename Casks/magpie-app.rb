cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4915"
  sha256 arm:   "29c73453665bc3c288d94efae82b4537860efad1882a9036cda58cc096927102",
         intel: "5b18b1ae9a958e33efb7ed9e7ba377588f48511de5abe5f76a928966935a7006"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
