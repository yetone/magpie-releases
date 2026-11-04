cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2926"
  sha256 arm:   "1ce4604f1964c3c0ff792eb40f9a9b5eab25c9dc5767897394af0dc4918978f1",
         intel: "53b54aeb5d7e38d3121cc6af56d809292fde3c2f14728fe91de505c2649ec7bb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
