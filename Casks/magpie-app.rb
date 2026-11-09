cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3433"
  sha256 arm:   "fd338989fcf518616b23e1671eb94ccb54fd5c5701c3fa7bad7789525abe1a4c",
         intel: "f31da0a476e2b83316d288830fea2dc3e4786e14bd64850c729ffe284ca2be38"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
