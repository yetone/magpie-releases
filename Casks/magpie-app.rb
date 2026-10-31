cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2362"
  sha256 arm:   "dcd67dc89636c2b32e6380f337015d66ff553895a632311469eddc4a46afa546",
         intel: "b9083d30104a161e1a915ba7e11db1cea570dd9dfebd4d0ae5bd9fda0b155a30"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
