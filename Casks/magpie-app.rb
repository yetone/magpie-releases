cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4711"
  sha256 arm:   "65bb274ad4bee9fb8d34706948fcbc3803f08fefdb4b7c8b62814996050552ae",
         intel: "ec74b13e023355913e3c4c624275bd0e5e2797a6a778061f45dee50285332359"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
