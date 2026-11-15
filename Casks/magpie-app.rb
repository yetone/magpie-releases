cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4274"
  sha256 arm:   "75b0e6d8ecb6dfb2034b688d71e9bd3fdc75aea246b4e96f14f8411431ebeebd",
         intel: "a01b6de088077146ca271b87e3b03ef8dc8b9babf12cf663abec6371e3b6451e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
