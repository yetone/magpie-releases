cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1156"
  sha256 arm:   "389726982ea5f1b3a7e636c6020efe0abc8f1417dc0467b72960778cfce92253",
         intel: "5e3a354bb8ae189055f69e900e24291152e0acc2bca12665c9282434af9ae59f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
