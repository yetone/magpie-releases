cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2749"
  sha256 arm:   "23067bbc29fb954518eca4f286f86078952b72eb1f0138118e602e912351465f",
         intel: "d70d70130d7da7ed684044c4dae4dec79a44132416d7950d95dbff966647c435"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
