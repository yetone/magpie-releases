cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2839"
  sha256 arm:   "6d6e1a586ca567f13348ed23eb42920ce87de2fc519465518d7411b7b165a73e",
         intel: "b62dbda5afb0471c674a0206b6e9c011c3a4c1c5876677c285011e9d57598832"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
