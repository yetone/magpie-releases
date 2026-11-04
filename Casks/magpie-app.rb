cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2947"
  sha256 arm:   "ef9c15f345770852f5685df47c74c84f2c7fa1bf8686ede398107e01ac717602",
         intel: "f59135fef38e406def2c7a0b1a6ed3eda492a43194c2011504927009057abfa6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
