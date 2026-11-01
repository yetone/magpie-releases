cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2626"
  sha256 arm:   "a47cbd70e7a92af4a29738df2c75457d5910886eea16b0591e20663889eeb3a2",
         intel: "9757f9d58f9f6ccd4c0939bf2341fdb62a5effaf325cd793f762a18b85a13b23"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
