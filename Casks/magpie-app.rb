cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2610"
  sha256 arm:   "73dc9dd7e735b22aacacb51204ba1345c7e3a61fb19d28905cd2be51b830d495",
         intel: "3a95e93c4ac9801c785eaf869c3f488a5f303a6d6ef1a1b7afe3b4aecc5cc070"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
