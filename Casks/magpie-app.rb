cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4136"
  sha256 arm:   "274742a3cb4ca3c3e0a72ce23d86db76449f2b6de156b015816be0d97be0163f",
         intel: "1aab101702bd52721fdfaef7ae562a0b9d8066a345347d3cce6d5953d3c820e9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
