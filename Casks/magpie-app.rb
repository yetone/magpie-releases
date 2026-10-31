cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2430"
  sha256 arm:   "7bd9a01f1f56269d4ae3e16feb0832110cd91a775b7c022b67de0779fdd3a5f2",
         intel: "e9b2ed6fb02699a75f6e9c87bc327af9701fed497d81d1065706373d61647626"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
