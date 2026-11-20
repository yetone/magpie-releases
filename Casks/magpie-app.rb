cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4596"
  sha256 arm:   "4447bf92dd57254be78d0cf05a6b4fa0d1140b730129adae56eeabb7bd8422e9",
         intel: "8fffdbe831cc2693b911d2a6a53a4a22cb58d72482bd744ed037ffd0bd96f8f1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
