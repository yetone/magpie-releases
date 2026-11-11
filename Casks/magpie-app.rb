cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3755"
  sha256 arm:   "e93b76d25988c380761a7ae23c66a7d5fcc713fca1b5198812d2f241fb46c7e5",
         intel: "8c5519764ebb790b910dbf48e13763d7c5bddf2840e7fb0b0d230b9e81f51cf0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
