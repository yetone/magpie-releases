cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2992"
  sha256 arm:   "52e4bb19b68da41df72a64822cbd3ed4e1f7443692c01954b4ecec0b1ec67e7a",
         intel: "aeb8c5b3371e1b421f172299d6e2c6811f488966b2cfe6ac6b5497ae1d8fd979"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
