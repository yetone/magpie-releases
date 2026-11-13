cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4097"
  sha256 arm:   "79979c1b52f77e10f8aa5aba9eafda980056f981c0a4117b5b7ed170790b51ba",
         intel: "1359fe4ab4c79239b331436440b551346170f0ee39c3d853184007da13484719"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
