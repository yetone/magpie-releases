cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3108"
  sha256 arm:   "e59e843264b952b614864a3e5a776f26e66555511cbdff164d69b25c7358832b",
         intel: "ebf764f4f2b75ac68c5b71ddcb5348588c5a205b8a889017dc07bbb41c50c9e5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
