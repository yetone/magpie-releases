cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2165"
  sha256 arm:   "ab95d685e81050324ee5cc9cf27a5f0627db0ac4aeaa99eb145a698e4cd98f13",
         intel: "50532685b3826cd0f3420b0d69140dced5aac26f0b364279b4189602f1d79489"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
