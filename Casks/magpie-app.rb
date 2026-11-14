cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4174"
  sha256 arm:   "f0b0a987393230d5265be708455a8b66accb4e3082908591e245832a637498fa",
         intel: "1f00b88093b042ea81b0a3a52714328cb49510a3e7104144bf750899d5411075"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
