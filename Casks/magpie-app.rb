cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4736"
  sha256 arm:   "46d5fffde24dbbfbf783d69303b373d42bd351b0e017ab1f03cd8152ad88e08e",
         intel: "ff1c80ec80c3e85dfff929b201f4fa391bc3b3ac9807cdb76f01dd2f5d3daa91"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
