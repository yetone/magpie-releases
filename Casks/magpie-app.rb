cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1910"
  sha256 arm:   "4f275d462d4e8521b15bc5ac78746be7e37123c1cac9c6b8aaa92feea126cbe8",
         intel: "930933b2676c1db2759fbbd4c695d2f6adfd25923b6333a429568d4c01764322"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
