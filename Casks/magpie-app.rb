cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4916"
  sha256 arm:   "c87c4e131951a0770b190f566051c747d8abbec7309ed81d0f5e1a923272532e",
         intel: "a9c86b693858dc9b397b158255b4246b44a4d2ad1ec5da65967a27eb96d43d68"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
