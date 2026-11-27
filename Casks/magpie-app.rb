cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4973"
  sha256 arm:   "23562a7ed51f98a5bbb80c550c2ac80efb501e607154f266fce07f8c7db4ddcd",
         intel: "df2a48d2e57db5a6be7a56466aa4185bd120f86960a2d8c2edbedb64e76a4247"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
