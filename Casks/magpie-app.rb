cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3912"
  sha256 arm:   "02bc997fcc19f778f256fa91ddeecfedfe3b0bb95ae8c413937b8fa502b459f9",
         intel: "2c756923d438c82690529ed1dcb9a99dc1c518ee1f80b59a3142a5042327ea54"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
