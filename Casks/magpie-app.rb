cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2429"
  sha256 arm:   "fde6aa8a84684e22a3db5bee56bb62ec2f9b00d11aadb16fca200e80f01ffe0c",
         intel: "81a1a64024aab9d19db75ab11f8dcef2332f638e97cbf81544df8d8368fa16b2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
