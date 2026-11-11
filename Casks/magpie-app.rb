cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3736"
  sha256 arm:   "44913384a345a7760ce8dcb792cb518ed26d57a2f91ac4f7a233ada68f8cfefd",
         intel: "021009294b7d717ba241d5840f7243d0242aa96dd6580183560b366f890e2a5b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
