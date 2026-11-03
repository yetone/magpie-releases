cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2793"
  sha256 arm:   "a7a8dbc4dc4ad83a9a0e69e41b213e52b716fde3001fb19be133d907c83d31bb",
         intel: "ce931887623782c920ee625417fba0dbc5cb73e819f49481e50b61cef421c431"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
