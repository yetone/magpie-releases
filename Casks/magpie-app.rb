cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4633"
  sha256 arm:   "fe90284543bd0fc678444746657fb0b2388d04a7f3cc895d6676534ec9ca1587",
         intel: "b3496f79361d5f8b46c6ec307563993ffeaab5012d38566ce0eb7c17e123b289"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
