cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2984"
  sha256 arm:   "db363753e3e6a16626f03b89ef0ba746da6313de18d896a066133de89bc9d523",
         intel: "8b51527c4db89564cd8d697f528e8e27565a13f0c2b22fd26a4559611d5db780"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
