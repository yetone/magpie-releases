cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2696"
  sha256 arm:   "bda797e5c8415af97233e3aba00d0f133b5d5e61d37c0abd9d827e66c3fd89df",
         intel: "4031df3b5fafe6c50f545e1afbd71a3598ec7f86945a7078cf6cce24da38b230"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
