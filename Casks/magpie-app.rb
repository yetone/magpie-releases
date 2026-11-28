cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5003"
  sha256 arm:   "21c4492e35ddb56dd48e4786c2b4821bac3218fc17fb2341d17d1c15fb7ad2d1",
         intel: "0c8bd9eea123829bf6199b50a56f2fea134d908d91e6afcd98e095fe5216e1b5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
