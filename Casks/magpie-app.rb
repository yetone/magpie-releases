cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4175"
  sha256 arm:   "10a6bc38bd84ef37efb84250aa972674f1bafe90f745b84e08d3d50a037724c2",
         intel: "d092c631453f5d041f589e8aad68e1484c3faf90d13e0682ce469587c36a9c40"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
