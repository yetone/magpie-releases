cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2767"
  sha256 arm:   "8c45e6f19f8fabfa7bcb38f471dbffa46a0a90dfb6373b786297ee17732b1264",
         intel: "5d8c3ae3317bff9c5f1ad5cade70e9e8120b67ed1e01c5b396b27d7571acd7d8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
