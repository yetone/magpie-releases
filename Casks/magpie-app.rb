cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.125"
  sha256 arm:   "0000978be05d9537da78d51532c44ca19de260e6ae77edd5045663657aa1b2b7",
         intel: "ff9f35f02019a8f2b15523cf343e838596129eee33d1325d00d3428686d40d04"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
