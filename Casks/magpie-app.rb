cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4747"
  sha256 arm:   "d8fff1815aa1a09dbba121ec8078c9d1142e3b3a746a892b033d7170fbe36e53",
         intel: "e0954c726835cad0695859c8ad1a91cfbd832c2a17daf62fb0dba6801833a772"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
