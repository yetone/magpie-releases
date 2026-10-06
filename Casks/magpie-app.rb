cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1073"
  sha256 arm:   "83598956b0d679929ae0d0134191896110207c7af6b1154c5e3d471fe65c9a68",
         intel: "4b5d53705f3af86f74f77fa7a8ecf22c33652a8a2d2447df0751e76e39d598fa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
