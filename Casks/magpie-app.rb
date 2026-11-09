cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3354"
  sha256 arm:   "d18377277b16f0c5b2b3739d9a10e744d11834ebe36a9df376372f002b6eb330",
         intel: "2024c5ee9e16728fa77c6712064ec0ae8274437a4545956df2432a065b71a3fc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
