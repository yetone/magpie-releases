cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2900"
  sha256 arm:   "4ece12663d0f7630139c11f0174c88e004f079d8d4a800da7b67006bbbed9934",
         intel: "2b52b27f31ef8dd1ffe27ff35b40e39749130db7875979bbc4205617dbca7284"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
