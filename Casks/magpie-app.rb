cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4731"
  sha256 arm:   "c30a8459d65f11c4d548e4e32b6b1d991b7353f269f0c319b00737364b73bcc7",
         intel: "3932395c796b44bffd21ebcd1e375cb911d0bc3a2b31ac1e13a6fe29e6c11113"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
