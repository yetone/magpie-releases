cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4520"
  sha256 arm:   "e978eb496644c3171c62c170e37860feaeda6bfb45991b28dc2abe8ac79ee413",
         intel: "778aa32e62b450cfc2b02c60fa3a95e0bacccdf0332da2f094ff8a70642b9a03"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
