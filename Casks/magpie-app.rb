cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2354"
  sha256 arm:   "b2d8d0fe0b836cd1f650ae17a1c8dba8c68baf4b57f2ba88fc7d17d5163d108d",
         intel: "bc22fb1e8ed01af60a222cd2c1f8846314212ca650d4427ce8375f8d42031502"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
