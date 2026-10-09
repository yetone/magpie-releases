cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1148"
  sha256 arm:   "e34d17dd72de8eed5ddbcd54273207ac1e358d19e39d281002b1db86cde278e0",
         intel: "10380faa9fc208f9d7407062070eb3711addb88b8411879fa748f7624563558f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
