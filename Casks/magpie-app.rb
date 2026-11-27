cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4935"
  sha256 arm:   "2908dc204bcc01e6b21ba441416a0967ab33151eac66e495759341490c9e60ba",
         intel: "3fa704bb5d4bfe75d9fc92889d4282a8864df733bce20e407f5b62210fc7afd6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
