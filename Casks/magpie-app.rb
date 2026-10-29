cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2031"
  sha256 arm:   "0ef515868824358160434f1fb9ce556b3ac74698bc7e58e33ff77f0c92ebdbf5",
         intel: "2a08a6e0c20811f7b09cdc72c685772bea67d6bb45670141087dd5fe020592d6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
