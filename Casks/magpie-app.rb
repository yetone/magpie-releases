cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4524"
  sha256 arm:   "7edcfdcaa4d6ea585cd0ab0475702dd3c19eef0872801b12bf6fc4f704ff44ae",
         intel: "82f56aeaf2c68ed1a1f6d5dce732777649b26a66af63455c8511f2f8e1eba916"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
