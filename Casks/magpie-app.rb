cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5027"
  sha256 arm:   "682c87779c81ce8c7613bdee9f11501b68cce2759a00674f920484c133b8d95b",
         intel: "8bb81c4e6bcdf26d17e86164cdbe2f87c14c8536070a59d4e56ab134dc2c5bad"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
