cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4016"
  sha256 arm:   "7d818baa5e2492c4f8db9183bf4df2cf110dbe953b79c9a53b8e6bbba0c1be2c",
         intel: "dae11ef0f2008fcc543ce2a68c332f05860b861d6c281c3fa67aabb0478d4d35"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
