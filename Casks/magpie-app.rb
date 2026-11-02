cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2663"
  sha256 arm:   "d2a3429c40f4b5ae00417160ce201cec5561ffdfcb9194cce5b6be8ebc922850",
         intel: "13b83097abc47d296ce7fcec4ac166beba3a22e543589d31ba462983033e935d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
