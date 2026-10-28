cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1899"
  sha256 arm:   "06493670bf4e078ccd4e7204732e6b656b2880637c97305823097d0130ded09f",
         intel: "7f5797a8b9928585ab80c761becd99ff4505464fabcd9b1f1df6522f19e9f8bd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
