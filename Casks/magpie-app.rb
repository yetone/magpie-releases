cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2504"
  sha256 arm:   "5a789637377ce7e47c1df9fcdf6979f07bebfb8a3794723c75e3a8efc7587b0b",
         intel: "6e409afb8db788f2a62af3876edc0ce22ad683a37691a7cb1c0d27e6c9565ff7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
