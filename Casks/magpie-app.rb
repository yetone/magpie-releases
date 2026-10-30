cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2200"
  sha256 arm:   "72250057075f311721a6448bd51fdd7bfe3245bbcb644ce86237dd54a90893e3",
         intel: "740c4aa1e42975898e4e5d30f41ad2b4c04f41d2a26ed5e5e441a9afaed4d28b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
