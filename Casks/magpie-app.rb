cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5049"
  sha256 arm:   "c4166cc5ca92bc6fd84f9b1fdfa018a6d06da64c30728c537cb1e5eed5b7a674",
         intel: "51f552a3cdd34824fe222d1e9f2f1116538f724d4221eebe9eddd928465b5d09"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
