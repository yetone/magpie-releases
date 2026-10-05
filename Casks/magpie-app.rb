cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.964"
  sha256 arm:   "386c4bfe74399188c8e9de703ceeb5d1476c9c69e5e73a6f7b89d4dc9c24ab00",
         intel: "f4b32cdd11aea8306542fb6c8c66921a6215697fc10df6afd25f32b5785c1865"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
