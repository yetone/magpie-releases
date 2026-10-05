cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1008"
  sha256 arm:   "8b78a4c8d658d2e924faa53351cf5ae0797c834e17c273449f0c5c2fafab7797",
         intel: "a1b64b539536d8fe875923915199b0c963db0417fb1e8146e83969a7ccea549f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
