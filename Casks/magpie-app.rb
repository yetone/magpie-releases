cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2371"
  sha256 arm:   "be8f32ba5749a1db78c7f53835afa709824d8713b7aeab50bb6bd0b7e51b5a13",
         intel: "d11b078660d785dce74f8f092434f82d6417886c2769540c9025a32504dcf146"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
