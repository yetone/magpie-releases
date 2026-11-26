cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4872"
  sha256 arm:   "fcdf9abfab1b59717d71a297992cdf8ad5356b2dd6d727fe81b53ffedbad841b",
         intel: "8b6695f063afc26f50730af8978a3346b59d685d154283e520df54af8a1c282f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
