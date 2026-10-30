cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2193"
  sha256 arm:   "c5f12e77cf07b8294b7ae8297c4094867e3a5f5c439efb94adbd6090dedec73f",
         intel: "6400e626d50cf72065da128bcfef7031f95a4e25391c3403a14e8ab8f8110e1f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
