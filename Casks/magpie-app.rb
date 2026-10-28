cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1843"
  sha256 arm:   "3ffb58cd262460b5d90b4a020fcabf43f17d86be1e95737540687a97471e1f6c",
         intel: "98054ba341a50f68c74ef1ca67e1a94a25c3e8696b81e0532f4193eb1bcb7f35"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
