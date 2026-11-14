cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4223"
  sha256 arm:   "9ee321dd31377a838fab11952329f28a1a3e581b0d58df9cba816bf2e5341d8f",
         intel: "ceb55515b4d9001f6f6346c13cc9fdde5bef0e12e2f5b35c229fe18c760768c6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
