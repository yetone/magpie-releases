cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2279"
  sha256 arm:   "76a6b7e810d7ea445648c555498340ae978529fb4fdf1074eacdecc881dba5e2",
         intel: "0f5f4e922705f3618872d7058fcc7e98569fa57f474c09b87e9c82086368c1c8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
