cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4949"
  sha256 arm:   "d2f60d971a485f259b631b3227113ee1acd2ba0bfd89298abad9b2af2e377624",
         intel: "a8368aa8ca40a0b52406aba179a564805a0301eb5397fbf64995edf54fbb8ce1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
