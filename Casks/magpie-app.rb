cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4328"
  sha256 arm:   "2bdfe02ea27766e5246d86fcdb52897ebdc61f44aedf718f6961c5e204fe769e",
         intel: "1924eb5a5b2fb18abd53a5bf693d868363af3ea3c38c03f76ebf88541a0ae35f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
