cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3364"
  sha256 arm:   "40984e4d8ab525a731c0ad6b00d3d48eafcdcd2a071fe563d66e3adc8213d503",
         intel: "4f5312d99e6564672dee51be65340eb95bb011635510c60aed34dde89ec07285"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
