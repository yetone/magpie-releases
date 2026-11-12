cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3880"
  sha256 arm:   "b7ab458ecc2b4cd8b1613caf38fa08074e62888967259d7ece267ed7163b8a67",
         intel: "480d65490b9023f17fd7fd5b048d92bbd632f0bbf5352dff7a00b6dcb6a4fc80"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
