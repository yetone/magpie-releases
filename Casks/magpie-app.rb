cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3723"
  sha256 arm:   "14fd1a8c78ae919f12e7bc05a35c59aea0a8a816d975c8773eab8d81432784ee",
         intel: "97a1171f962e5fab9c799736898cd87ad2ad954b170148c6530c091424757373"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
