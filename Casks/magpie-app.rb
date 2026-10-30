cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2135"
  sha256 arm:   "a75aed8f903d9521e2fa0b7dad156c1b6276a187ace46f2a9e00b7bf2aa970d2",
         intel: "010c6eb2ef18a9135ef12be6cf6412d1a28ff46a7fab901c783d1faf23483dce"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
