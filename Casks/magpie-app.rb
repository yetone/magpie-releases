cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2753"
  sha256 arm:   "72598947e25b90d231eca0cb1fde5ec47fc3d9f6991c19e6ed9e6bb92bac737a",
         intel: "a27256ec3ea5715ef56bca036daf9f5740137c8899080236225ebc88aa59c018"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
