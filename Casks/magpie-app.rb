cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3638"
  sha256 arm:   "cb8860a7b4a4049c067f5a2c6d1044e5b80418eae11e2fba9d62ed7f51b7e705",
         intel: "180ec11e72c6232a180cb549ceae7df5bfbfd7611d8e127e862077e3fc98f757"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
