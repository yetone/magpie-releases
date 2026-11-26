cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4893"
  sha256 arm:   "beb613884dcc0292fdac5b4f5dabfa7ac4fc4289adb3abe2b8bb9d316c9a406c",
         intel: "cb598e198d0ffaeedfc99875b7b00f4d27f897f5113258675780ca10a95a2ae7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
