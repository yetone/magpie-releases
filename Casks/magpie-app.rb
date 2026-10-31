cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2295"
  sha256 arm:   "784728f9d98fe7eeabf6a27b25890e5070effbd77198eddffed90115f438dfae",
         intel: "98d65ab858db1f0bc3aa29227b2b21c0141ed27bea330f9ca864f6d7cc5d2f89"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
