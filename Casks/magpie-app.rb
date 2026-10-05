cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.970"
  sha256 arm:   "7c2ae91b8b625b6aab9ed723d877ab9625c7ddde56f8c6976ad090934a7016f7",
         intel: "cb9a955bbb8adecf1e7b4a6841f3f4d2ccd6d0660c9ed6b7a4ac7ca707711e2f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
