cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4065"
  sha256 arm:   "f82c219bbd2cb4096016736cac0e832c2acd4e344e3bb4a520b3f60e01ea5612",
         intel: "3d90b43c6b6d44902b6f073943f7936cb45718f647ca862e68ac8356a5fa3e07"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
