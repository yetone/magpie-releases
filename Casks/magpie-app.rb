cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3903"
  sha256 arm:   "1a33ccbfcc6d84c799b823539820528382c355152bfe8662f1b74ccf87551fbc",
         intel: "05480eb530dfdd2a6d132cea9c13c933f04753cc8fedb3ab715faba972abf4fc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
