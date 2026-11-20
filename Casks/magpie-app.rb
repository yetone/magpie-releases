cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4603"
  sha256 arm:   "cdd7144cb935f42b7adc50d9fb9d9146b08f51c3dc5c0781283951c3e6d84fbc",
         intel: "6fa1d5cd3cb5752cc9a0eb376c36a19a6c43f2b0e28b0aefd37d8e69a6006cf6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
