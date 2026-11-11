cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3731"
  sha256 arm:   "0e7e051d8b64ea59d09727dfa0cfae308c742dbeadc8378f43280a6b4e759602",
         intel: "72d3677c1b9eec1462fa9c4476ee5e7d97a34cb1749346fc41e8203efed3430b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
