cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3078"
  sha256 arm:   "ad3eb00f0bcf01a4a91343cbeb5e976ab968ce34d258018ce59516f520c38d03",
         intel: "3f44879ea97184db9eec4864dcd9fc74f9dce548cabd02ba7b5b0ec0a145c1c3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
