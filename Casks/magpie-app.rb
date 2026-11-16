cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4325"
  sha256 arm:   "20f82b5d23fb569b0b23b943e8e573671b51837a9e8acffa032c5e93259099f3",
         intel: "3385934c5f819ac12b00d58f1a2d0d361693381669bc1a80479f02b840f38d84"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
