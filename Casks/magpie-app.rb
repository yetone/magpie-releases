cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3739"
  sha256 arm:   "41bb7977ac815c49d5254d0dd7c9d489a71c169757487800623eb2d2a91f3bff",
         intel: "3733524b3c3dc6df5e36d0b9fce35ea9d8e1458d57ba758e9b082e62843d7580"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
