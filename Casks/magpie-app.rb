cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4549"
  sha256 arm:   "6ad837d4a493c9c4ad7c17b27f9944f82923a03ef0390e231057109d4ed88162",
         intel: "7da906c8681827cc81374e5bcb08e1a206195d41e437a95af16caf961dad365c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
