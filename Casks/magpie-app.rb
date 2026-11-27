cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4940"
  sha256 arm:   "eada3e608c7a0359c451e9ac85d252679e93e8a962c5a55e0c8d1da4ca6d5473",
         intel: "b9d2084688d5f59eaa728797cd94b68fd3ec50d6e41f2b7d2187c175dcc52ba1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
