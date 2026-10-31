cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2494"
  sha256 arm:   "0eac3627dfcd2558f1336f206587577bee9610b4a7c4497bcb83b3be50bea12e",
         intel: "2fe977bc0c8fb2e24a03a91800bfa528f1a72623433c513581c7c40a717d71a3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
