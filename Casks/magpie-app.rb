cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3297"
  sha256 arm:   "0201835d27f8949b34b2f83bee6475d7413c35d1bbdc60e0b359fdfd64b910c5",
         intel: "8b8bc620f9f703f9939fbf1d4abcbac5a2c1ddc94d6b40945b3d1dd83a6e2e6a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
