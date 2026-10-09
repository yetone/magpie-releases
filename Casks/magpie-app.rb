cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1145"
  sha256 arm:   "46b88d4b0c13370b390f945a2ddb27ecad9ba2db8cbad614e8f876ff812e7f90",
         intel: "d0d95cfca3cfe56b1842a0b6d238ea54375f895ef8952dc05980f71249feefdc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
