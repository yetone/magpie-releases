cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3576"
  sha256 arm:   "3ada84ec9b9b215f1117ce562eeb4e67724e009c736769dd9ac2a4811138af8f",
         intel: "cee2bdbbff4c73d92f37836331d11f15f19b512aa9f6f94f74fbfbcc00b46d20"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
