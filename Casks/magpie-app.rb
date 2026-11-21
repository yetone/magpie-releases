cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4653"
  sha256 arm:   "bcbfb484823d310d2c2212f6564434ef1b7b548783a5f72acbdc1cb492696fbf",
         intel: "9af666e1b17b6fb732d2bc1140c7e410de05063ebeaaaf9196c0cd24aa143580"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
