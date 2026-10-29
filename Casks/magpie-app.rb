cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2007"
  sha256 arm:   "79a56bc343518fb356b0c2e1055a182f7e1f63a5cc5bd25ba018ceab8c92ff11",
         intel: "83b1ea6afbf99add4b2f8b51944624c93aea8d7d1eb6a3cbd704c664f8774113"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
