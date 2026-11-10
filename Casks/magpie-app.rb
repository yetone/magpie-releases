cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3501"
  sha256 arm:   "78cb496df5d658f1f2cb14a77ffd146a9583a645f81555c4ea9073f1a0e99127",
         intel: "09bee60b27b774c60e0bf3b9a74f16a468c4d06ee09b663e45d29414a80fa1a5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
