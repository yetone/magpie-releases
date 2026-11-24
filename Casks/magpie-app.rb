cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4744"
  sha256 arm:   "cf123272132f5ac56d02964642948b0a2c71fe840a9308209e714e13c7aaf9ae",
         intel: "0a7ee55018597ca20b879a9965299f3f1f7c7f9c4eb7cdb1c2de7f687f623830"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
