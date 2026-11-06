cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3202"
  sha256 arm:   "1b01e1fffd0a4cae0c13f461487d933ba99e34bdf379379e4fbfc6dd13f2b565",
         intel: "99ccf487c60f98bcf8fde145fb6e2cb9d96689867f3ba2ab1d8b6fdf7041bc01"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
