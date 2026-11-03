cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2771"
  sha256 arm:   "096c5d2ae4bafb01397f158d7c616ad18c612d02c30555023e4e765bc0852651",
         intel: "290ed9043edab980dff3e709e7670f7e45b5f1e9febc70a88b829b5a0d5f8e21"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
