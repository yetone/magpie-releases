cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3372"
  sha256 arm:   "004bbccc5ae8138093d34d2d5117ff6828cd0982ecb9d8c65fb8533f8aa3ce85",
         intel: "f399b95c6598a00e8cb9b218b2f6d5de529b02247692778dbe1c366ecc594be7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
