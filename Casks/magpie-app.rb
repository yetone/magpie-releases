cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2693"
  sha256 arm:   "c6be8c9446c49a45db135b5f1c7b018162dadae767d547cc5ba7cc39191627e1",
         intel: "e335243a719ed1512fe539331d78dfac8dcfb662672fb165c389640f9dffea8a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
