cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1868"
  sha256 arm:   "821735ea61737e5f0a2e7ff28843d53d70a9b6887afa5d3072c254c8d5dcdbc9",
         intel: "aec3559cd96a36a4551e28a81e9cbc58737a763fb4894d938a856e2c2cd9d61e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
