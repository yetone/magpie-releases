cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4076"
  sha256 arm:   "14953bb77c72d39ddd66ff2612d0b0bba8c77b8febd2e6c46091008bcb27e06a",
         intel: "9fab81c678b6a7a70ffa0136d203dfd4daaf2493ee7ece98d7e91d2a65746066"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
