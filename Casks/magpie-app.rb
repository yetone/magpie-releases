cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1097"
  sha256 arm:   "7cdae098850c7443b4faba2be399a882e74da9c208c1590b021d8169b179ab68",
         intel: "cdc4e503b4ac042c54c65fce8794736ddda741c7e3b79df5c22a2a822baa2ef2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
