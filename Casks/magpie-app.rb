cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3279"
  sha256 arm:   "6d5b9781487020dbb93ca4630e9134688e32e5a12a898aa6be6109f53db0833f",
         intel: "e961378aa5942f7b500956e0b2d980fd992911b6de98886608656d98e131ac5c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
