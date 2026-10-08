cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1128"
  sha256 arm:   "d544ce88dd6313c50bee93f8532903a47bf1bc677791f96f13c1b7f2dfb1330a",
         intel: "0f935c3c2cf31b20e9157815d90e5d4f8dd96d9777566a9b8c02fb27dbfa0706"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
