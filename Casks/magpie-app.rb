cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4081"
  sha256 arm:   "90320beb56f584ad36fdd7894aebb8418fb53fa92a4614ec29375f7c0f769a37",
         intel: "72b26157f8a07fec1ac42a315f0e9c27aa99d388c1e8849d145d52155b385e8b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
