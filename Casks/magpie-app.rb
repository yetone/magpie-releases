cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2713"
  sha256 arm:   "0e9e9ee31a79f380d793ba52a2e7c6d193c678f49b2868e994a2d39e92c07249",
         intel: "1b79f8fb178ed9ae24636c6ae9a2f6a26be92c768cffea27f4e8afcedc5df6d7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
