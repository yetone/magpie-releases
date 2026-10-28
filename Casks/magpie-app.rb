cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1914"
  sha256 arm:   "4b2a68b1311f83779979780f597092154ab648b4b6c157366a5f985736543492",
         intel: "6dfa2f00b9239fe558782bd902ec0d876ca5bce1d5d9dc6f57b2114bf06604e8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
