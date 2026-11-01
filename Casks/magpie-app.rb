cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2552"
  sha256 arm:   "68504c2956bebd631b1cd9d6a80f0c57cb5e4cb866bae7580334f5a9d7a68bef",
         intel: "a1a96cc016945ca8ce03132ca21053c47e111d427fc831e598ec8b16b9aeb227"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
