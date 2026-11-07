cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3229"
  sha256 arm:   "5a894c3bbcf2ddaf4dcc35469e5c844df52aad51aead56449d5e720f063d08e0",
         intel: "b88d508677dfa59536951c9f7b2bce024d8005d67d7894fc68f9f830ea070206"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
