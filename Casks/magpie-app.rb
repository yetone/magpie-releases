cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2502"
  sha256 arm:   "d72536329f340677c64d56f7ad912aa1ea5914f71a60eb19d54ba513b1eab9ce",
         intel: "3ebc1c3b38742db4f52223c5e4c6b316f639cf536a571799d34502723a4af279"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
