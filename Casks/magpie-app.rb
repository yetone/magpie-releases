cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2980"
  sha256 arm:   "d82a047728a8c60a2e2b52a15f7022f84fe13380859f321c52d810b09c2904ab",
         intel: "96319949b7c4a829b4b161c6e4a7380a47a095c430e46989c52480eb2355942e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
