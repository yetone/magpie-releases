cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4541"
  sha256 arm:   "7224eaa4d91eae2dcf448992c0afaaf747bbbb4ccf862f649fd3643bbe28eb4b",
         intel: "3572ee398384b72c0a1c29e687e791717d1250fe3df357cf9999a5eb20d01526"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
