cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4113"
  sha256 arm:   "579a3a96bc318af655f7605a6260464975ef1f33a0ae6c4198399b86056a9dbd",
         intel: "8274a18b656e3bece6fd0edcfe2a38ea67ff3d5c7c5cfc091cf352a799b6031b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
