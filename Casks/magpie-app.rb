cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1161"
  sha256 arm:   "c8601cc5db7b0413f172b360e4fa237264d0ee54054227d12de989e86ddf7ddf",
         intel: "d8dc00d6254d0ab4010bbd6a9b82734f98a19866448b1bbe5d01d51f3d885057"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
