cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2621"
  sha256 arm:   "3d8d5f0d1e09ae1f9efeb4561876696a65624428a329d75cf9eb07dc35c54f69",
         intel: "a5dc252c83574b265e0c27763a2fd976eab976b9ed352d430907acdfe5fb0d25"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
