cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3640"
  sha256 arm:   "5f345a008f636c71a45451c11eb546caa219950aba883d32e07c60791029dbdc",
         intel: "05cabd101b692a574d5e0a010922d31e7f162ef0bc8a35dfc97ec759f841b4c9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
