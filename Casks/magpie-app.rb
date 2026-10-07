cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1106"
  sha256 arm:   "e06de1fd24a91d9ea0fa7c8a68f04ff1525fd5d9009901367301b09d60d8ae0a",
         intel: "19c8b6e010a6a482eb4da84b609312e0f9a674eb95dcb374625939e46fe1bcc4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
