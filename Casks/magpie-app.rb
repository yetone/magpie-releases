cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2731"
  sha256 arm:   "93aec4415423e13b234ae35c4765e3c97c5f4a60ccd4deefb2b454a16aaca23a",
         intel: "29b96648a5a748ba8baea3eae45a1b778a923bedac2cd21cac42d90382ec1ba2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
