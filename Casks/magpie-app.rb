cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1111"
  sha256 arm:   "06c47e7c9aa14a68f43565428859c3f8e55a27672c63e49e200edad44d7f2fc1",
         intel: "e6ab6f23ae69216863f25f6c2753cc54198d78a1e83b6c8b83b6f5b0cb68689b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
