cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4491"
  sha256 arm:   "ca0611db12e3aa4558ee16a8c87dc6b5757b0ccec377f57910328d35b21e0a89",
         intel: "372c80d01fe9699f80e55ee30fc51d79d4e8432498434bff60bc6839f2ab5568"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
