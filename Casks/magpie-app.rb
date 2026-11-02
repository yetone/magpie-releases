cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2703"
  sha256 arm:   "8afd50d911eaaf0bc6073e192e5c0f6821b184ee985587a34423e32a1fefab29",
         intel: "6c68259e511266b42932dbf2055fb05ee5d37a189a984183b48e09ebd6be3bf1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
