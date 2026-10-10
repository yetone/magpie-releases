cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1154"
  sha256 arm:   "2877889e321b83c47dd59ed003097e4403adc0b2491fdd36583653ad2e039574",
         intel: "784463a2b9dd3f1a9f7d4490a987a97cbf41b6d89c85b1403d29b78f36e56b46"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
