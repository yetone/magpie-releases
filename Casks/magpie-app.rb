cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2331"
  sha256 arm:   "4e83f595d33f3c2bcf9ead190f95299ed3dd3a167d4c2f2d91c068c8f9e8fc70",
         intel: "95e6b2d176792ff7ccb080ce2128464ac0fac9a235fe483258f53545cf9b4219"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
