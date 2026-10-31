cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2479"
  sha256 arm:   "24ae8509dfd84298d4cac8b992db169b92e2bf60047245c9ea2ed7a48b2f5ad3",
         intel: "6dbce9edbc9ec50bb324e8a7fbbb419bfaeec0be18f8439ef9e30b7042f29ba7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
