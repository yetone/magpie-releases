cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2558"
  sha256 arm:   "ac8f0f0007afc272239326e3e89473f3971636160140d8e67a8f01d8f97e849a",
         intel: "e38e2810a720ba8dbdb0596219675bb6c0b193c3320c532463c564970ef247c3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
