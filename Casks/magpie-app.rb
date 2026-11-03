cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2813"
  sha256 arm:   "2d2c79582ad44894f2fd9dc033a91548c5264dea6cba4cea8f66a758f7684952",
         intel: "72cd5111d08553df264f09f0e7db62e9e6859bafc84c9f5eb14c68d4d3e639d4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
