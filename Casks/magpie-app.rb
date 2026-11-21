cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4623"
  sha256 arm:   "1fefb99e33d9f8297802e64784769ccc687a0a6244060e168fe8fde320c0d7a6",
         intel: "9a7074346e4808484874e40e2d827813fc02c218b30d98be5ea5fdbe59fc3efa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
