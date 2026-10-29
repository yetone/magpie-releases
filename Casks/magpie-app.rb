cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2084"
  sha256 arm:   "4f8acca7a49baeb2d050e46fbcceadde7cc1cf283960a00a4bdffa78bdac0b85",
         intel: "f7cd6412f34eb0e75863f78f9873664de5f2bc700bf1ca59944d8f24c842fb3f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
