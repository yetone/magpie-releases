cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4111"
  sha256 arm:   "bf4bd492614bc300cc39955984c2c76e59bde1151f8ebdf74bdf42edc6f38711",
         intel: "d45c1e2747f4e5b9c756863e7607ee54abcb581cdc1ec75babdf1f1c4445373e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
