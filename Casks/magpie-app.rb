cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.993"
  sha256 arm:   "90636c61f9f60f2d3a7aca6d82ac698fc4058822e554dc4f24fb59dbe8a89466",
         intel: "19cc4782bb44baa1dc1a408738aa73d8a757be7802d8507ae1345bcd64a9404e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
