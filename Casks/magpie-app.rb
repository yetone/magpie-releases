cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3936"
  sha256 arm:   "b35b4eb97d971c3d90ee17f0deec5e84ef7c23cea1bb85707009c31afd815c25",
         intel: "72adf8a039a8b2ff2258540515799eeeb53ec3e22772757b4492e993c76903f1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
