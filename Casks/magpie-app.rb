cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3426"
  sha256 arm:   "937f348f4ba32dbd20b28f1aedc8272591c911e04281cf687e736f9d0f3e6893",
         intel: "9b8a074b3fbbc6ae1847804c9d0b3a7e983ca6bb988282c436f5e4d3e540c98f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
