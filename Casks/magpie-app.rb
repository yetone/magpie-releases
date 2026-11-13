cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4055"
  sha256 arm:   "86c243f6b4308192409850ef2c7d96dee12ec4a16b50ac638dc8ad6fb8a0967c",
         intel: "8a47a32f4911caec4bfb56794a0d0a1c1155d407cde512a90865750161b4d288"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
