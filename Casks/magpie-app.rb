cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2965"
  sha256 arm:   "c35e8f8f09d6b27b7e4d58ae96d904cfcade87c3c6927c811ebb3dbf96c39526",
         intel: "776b0e92fbd6d80c5780731ec1c939e64e2afeddd94192e27a0c50ced174a2bd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
