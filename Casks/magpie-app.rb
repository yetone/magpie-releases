cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3659"
  sha256 arm:   "92e1fb5924d54714fa3182bb79baf5a6e7c581c78c76d22a4871dfb2d5ca3bf1",
         intel: "3582d2131ec9f2c3099f792f798e094a5eb6f48225083c5dc1a72ce7b1ff7d19"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
