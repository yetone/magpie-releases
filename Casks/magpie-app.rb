cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3945"
  sha256 arm:   "bf0a7a93a032d72384197a7afeab56823fa569b88f6d8100c34eda14fb4134f0",
         intel: "80ce81d8eed4529d4697ec1347f8499de32b87c9deb557943ce19004929e7da8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
