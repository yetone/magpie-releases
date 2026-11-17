cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4362"
  sha256 arm:   "b46205e6a2f73c629b6f9a3532c5b7a6fd2a81c7f4e6e917e68e4a1cf1d990d9",
         intel: "c3928fc974a9dd98a5415474793e9f0752c58fb298c3802af2d07b5c06ee09d8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
