cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2060"
  sha256 arm:   "2b49b384de7026ef950985de3302fae58404f77aaaef0cfe3fbdc3587753a9a8",
         intel: "88e5f032aca2dab9967419391c9bbc8480126a9c2bc96ec5d4f47d4668c45a86"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
